"use client";

import { useState, useEffect } from "react";

export default function Page() {
  const [rows, setRows] = useState([]);
  const [loading, setLoading] = useState(true);
  const [error, setError] = useState(null);

  useEffect(() => {
    async function getFoods() {
      try {
        const apiHost = process.env.NEXT_PUBLIC_API_HOST;
        const res = await fetch(`${apiHost}/food`, { cache: "no-store" });
        if (!res.ok) throw new Error("Failed to fetch");
        const data = await res.json();
        setRows(data);
      } catch (err) {
        setError(err.message);
      } finally {
        setLoading(false);
      }
    }

    getFoods();
  }, []);

  if (loading) {
    return (
      <main className="container">
        <div className="empty">Loading...</div>
      </main>
    );
  }

  if (error) {
    return (
      <main className="container">
        <div className="empty">Error: {error}</div>
      </main>
    );
  }

  return (
    <main className="container">
      <header className="header">
        <h1 className="title">Foods Around the World</h1>
        <p className="subtitle">Explore famous dishes from different countries</p>
      </header>

      {!rows || rows.length === 0 ? (
        <div className="empty">No foods found.</div>
      ) : (
        <section className="grid" aria-live="polite">
          {rows.map((x) => (
            <article key={x.id} className="card" tabIndex={0}>
              {x.image_url && (
                <div className="media">
                  <img
                    src={x.image_url}
                    alt={x.food_name}
                    className="img"
                    loading="lazy"
                    decoding="async"
                  />
                </div>
              )}
              <div className="body">
                <h3 className="card-title">{x.food_name}</h3>
                {x.description && <p className="detail">{x.description}</p>}
                <div className="meta">
                  <small>
                    Origin: Lat <span className="code">{x.origin_lat}</span>{" "}
                    · Lng <span className="code">{x.origin_lng}</span>
                  </small>
                </div>
              </div>
            </article>
          ))}
        </section>
      )}
    </main>
  );
}
