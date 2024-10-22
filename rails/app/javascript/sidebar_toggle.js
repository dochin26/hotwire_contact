// サイドバーの開閉を制御
document.addEventListener("DOMContentLoaded", function() {
  const sidebar = document.getElementById("sidebar");
  const toggleButton = document.getElementById("sidebar-toggle");
  const closeButton = document.getElementById("sidebar-close");

  // ハンバーガーメニューボタンをクリックしたとき
  toggleButton.addEventListener("click", function() {
    sidebar.classList.toggle("active");
  });

  // サイドバー内の「閉じるボタン」をクリックしたとき
  closeButton.addEventListener("click", function() {
    sidebar.classList.remove("active");
  });
});
