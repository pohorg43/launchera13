.class public final synthetic Lcom/android/quickstep/uioverrides/a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/android/statistics/LauncherStatistics;


# direct methods
.method public synthetic constructor <init>(Lcom/android/statistics/LauncherStatistics;I)V
    .registers 4

    iput p2, p0, Lcom/android/quickstep/uioverrides/a;->a:I

    const/4 v0, 0x1

    if-eq p2, v0, :cond_c

    const/4 v0, 0x2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/quickstep/uioverrides/a;->b:Lcom/android/statistics/LauncherStatistics;

    return-void

    :cond_c
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/quickstep/uioverrides/a;->b:Lcom/android/statistics/LauncherStatistics;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 3

    iget v0, p0, Lcom/android/quickstep/uioverrides/a;->a:I

    packed-switch v0, :pswitch_data_1e

    goto :goto_16

    :pswitch_6  #0x1
    iget-object p0, p0, Lcom/android/quickstep/uioverrides/a;->b:Lcom/android/statistics/LauncherStatistics;

    check-cast p1, Lcom/android/launcher3/card/LauncherCardInfo;

    invoke-static {p0, p1}, Lcom/android/statistics/LauncherStatistics;->b(Lcom/android/statistics/LauncherStatistics;Lcom/android/launcher3/card/LauncherCardInfo;)V

    return-void

    :pswitch_e  #0x0
    iget-object p0, p0, Lcom/android/quickstep/uioverrides/a;->b:Lcom/android/statistics/LauncherStatistics;

    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Lcom/android/statistics/LauncherStatistics;->sendRedundantTaskInfo(Ljava/util/ArrayList;)V

    return-void

    :goto_16
    iget-object p0, p0, Lcom/android/quickstep/uioverrides/a;->b:Lcom/android/statistics/LauncherStatistics;

    check-cast p1, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;

    invoke-static {p0, p1}, Lcom/android/statistics/LauncherStatistics;->i(Lcom/android/statistics/LauncherStatistics;Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;)V

    return-void

    :pswitch_data_1e
    .packed-switch 0x0
        :pswitch_e  #00000000
        :pswitch_6  #00000001
    .end packed-switch
.end method
