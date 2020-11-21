import React from 'react';
import ReactDOM from 'react-dom';
import { Bar } from 'react-chartjs-2';
import './App.css';

function App() {
    /** グラフデータ */
    const graphData = {
        labels: [
            // （省略）
        ],
        datasets: [
            {
                data: [16, 42, 117.5, 90.5, 120.5, 225, 193, 110, 197, 529.5, 156.5, 76.5],
                backgroundColor: 'rgba(30, 144, 255, 1)',
                label: '合計降水量(mm)',
            },
            {
                // データセットを追加
                data: [52.3, 56.1, 117.5, 124.5, 137.8, 167.7, 153.5, 168.2, 209.9, 197.8, 92.5, 51],
                backgroundColor: 'rgba(30, 144, 255, 0.2)',
                label: '合計降水量例年値(mm)',
            },
        ],
    };

    /** グラフオプション */
    const graphOption = {
        // （省略）
    };

    return (
        <div className="App">
            {/* グラフコンポーネントの呼び出し */}
            <Bar data={graphData} options={graphOption} />
        </div>
    );
}

export default App;