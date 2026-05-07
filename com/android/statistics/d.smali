.class public final synthetic Lcom/android/statistics/d;
.super Ljava/lang/Object;
.source ""


# direct methods
.method public static a(Ljava/lang/String;Ljava/lang/String;Lcom/android/statistics/LauncherStatistics;Ljava/lang/String;Z)V
    .registers 6

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {v0, p0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p2, p3, v0, p4}, Lcom/android/statistics/LauncherStatistics;->onEvent(Ljava/lang/String;Ljava/util/Map;Z)V

    return-void
.end method
