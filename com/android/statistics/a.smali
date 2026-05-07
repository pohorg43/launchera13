.class public final synthetic Lcom/android/statistics/a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/android/statistics/LauncherStatistics;

.field public final synthetic c:I

.field public final synthetic d:Lcom/android/launcher3/OplusWorkspace;

.field public final synthetic e:Lcom/android/launcher/model/BgDataModelHelper;

.field public final synthetic f:Ljava/util/Map;


# direct methods
.method public synthetic constructor <init>(Lcom/android/statistics/LauncherStatistics;ILcom/android/launcher3/OplusWorkspace;Lcom/android/launcher/model/BgDataModelHelper;Ljava/util/Map;I)V
    .registers 7

    iput p6, p0, Lcom/android/statistics/a;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/statistics/a;->b:Lcom/android/statistics/LauncherStatistics;

    iput p2, p0, Lcom/android/statistics/a;->c:I

    iput-object p3, p0, Lcom/android/statistics/a;->d:Lcom/android/launcher3/OplusWorkspace;

    iput-object p4, p0, Lcom/android/statistics/a;->e:Lcom/android/launcher/model/BgDataModelHelper;

    iput-object p5, p0, Lcom/android/statistics/a;->f:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 5

    iget v0, p0, Lcom/android/statistics/a;->a:I

    packed-switch v0, :pswitch_data_22

    goto :goto_14

    :pswitch_6  #0x0
    iget-object v0, p0, Lcom/android/statistics/a;->b:Lcom/android/statistics/LauncherStatistics;

    iget v1, p0, Lcom/android/statistics/a;->c:I

    iget-object v2, p0, Lcom/android/statistics/a;->d:Lcom/android/launcher3/OplusWorkspace;

    iget-object v3, p0, Lcom/android/statistics/a;->e:Lcom/android/launcher/model/BgDataModelHelper;

    iget-object p0, p0, Lcom/android/statistics/a;->f:Ljava/util/Map;

    invoke-static {v0, v1, v2, v3, p0}, Lcom/android/statistics/LauncherStatistics;->f(Lcom/android/statistics/LauncherStatistics;ILcom/android/launcher3/OplusWorkspace;Lcom/android/launcher/model/BgDataModelHelper;Ljava/util/Map;)V

    return-void

    :goto_14
    iget-object v0, p0, Lcom/android/statistics/a;->b:Lcom/android/statistics/LauncherStatistics;

    iget v1, p0, Lcom/android/statistics/a;->c:I

    iget-object v2, p0, Lcom/android/statistics/a;->d:Lcom/android/launcher3/OplusWorkspace;

    iget-object v3, p0, Lcom/android/statistics/a;->e:Lcom/android/launcher/model/BgDataModelHelper;

    iget-object p0, p0, Lcom/android/statistics/a;->f:Ljava/util/Map;

    invoke-static {v0, v1, v2, v3, p0}, Lcom/android/statistics/LauncherStatistics;->e(Lcom/android/statistics/LauncherStatistics;ILcom/android/launcher3/OplusWorkspace;Lcom/android/launcher/model/BgDataModelHelper;Ljava/util/Map;)V

    return-void

    :pswitch_data_22
    .packed-switch 0x0
        :pswitch_6  #00000000
    .end packed-switch
.end method
