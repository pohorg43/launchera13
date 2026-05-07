.class public final synthetic Lcom/android/statistics/b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/android/statistics/LauncherStatistics;

.field public final synthetic c:Lcom/android/launcher3/OplusWorkspace;

.field public final synthetic d:Lcom/android/launcher/model/BgDataModelHelper;

.field public final synthetic e:Ljava/util/Map;


# direct methods
.method public synthetic constructor <init>(Lcom/android/statistics/LauncherStatistics;Lcom/android/launcher3/OplusWorkspace;Lcom/android/launcher/model/BgDataModelHelper;Ljava/util/Map;I)V
    .registers 6

    iput p5, p0, Lcom/android/statistics/b;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/statistics/b;->b:Lcom/android/statistics/LauncherStatistics;

    iput-object p2, p0, Lcom/android/statistics/b;->c:Lcom/android/launcher3/OplusWorkspace;

    iput-object p3, p0, Lcom/android/statistics/b;->d:Lcom/android/launcher/model/BgDataModelHelper;

    iput-object p4, p0, Lcom/android/statistics/b;->e:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 5

    iget v0, p0, Lcom/android/statistics/b;->a:I

    packed-switch v0, :pswitch_data_22

    goto :goto_14

    :pswitch_6  #0x0
    iget-object v0, p0, Lcom/android/statistics/b;->b:Lcom/android/statistics/LauncherStatistics;

    iget-object v1, p0, Lcom/android/statistics/b;->c:Lcom/android/launcher3/OplusWorkspace;

    iget-object v2, p0, Lcom/android/statistics/b;->d:Lcom/android/launcher/model/BgDataModelHelper;

    iget-object p0, p0, Lcom/android/statistics/b;->e:Ljava/util/Map;

    check-cast p1, Landroid/view/View;

    invoke-static {v0, v1, v2, p0, p1}, Lcom/android/statistics/LauncherStatistics;->c(Lcom/android/statistics/LauncherStatistics;Lcom/android/launcher3/OplusWorkspace;Lcom/android/launcher/model/BgDataModelHelper;Ljava/util/Map;Landroid/view/View;)V

    return-void

    :goto_14
    iget-object v0, p0, Lcom/android/statistics/b;->b:Lcom/android/statistics/LauncherStatistics;

    iget-object v1, p0, Lcom/android/statistics/b;->c:Lcom/android/launcher3/OplusWorkspace;

    iget-object v2, p0, Lcom/android/statistics/b;->d:Lcom/android/launcher/model/BgDataModelHelper;

    iget-object p0, p0, Lcom/android/statistics/b;->e:Ljava/util/Map;

    check-cast p1, Landroid/view/View;

    invoke-static {v0, v1, v2, p0, p1}, Lcom/android/statistics/LauncherStatistics;->d(Lcom/android/statistics/LauncherStatistics;Lcom/android/launcher3/OplusWorkspace;Lcom/android/launcher/model/BgDataModelHelper;Ljava/util/Map;Landroid/view/View;)V

    return-void

    :pswitch_data_22
    .packed-switch 0x0
        :pswitch_6  #00000000
    .end packed-switch
.end method
