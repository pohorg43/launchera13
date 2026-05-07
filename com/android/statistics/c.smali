.class public final synthetic Lcom/android/statistics/c;
.super Ljava/lang/Object;
.source ""


# direct methods
.method public static a(Lcom/android/statistics/LauncherStatistics;Ljava/lang/String;Z)V
    .registers 4

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {p0, p1, v0, p2}, Lcom/android/statistics/LauncherStatistics;->onEvent(Ljava/lang/String;Ljava/util/Map;Z)V

    return-void
.end method
