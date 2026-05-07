.class public Lcom/android/launcher3/allapps/PluginHeaderRow;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/launcher3/allapps/FloatingHeaderRow;


# instance fields
.field private final mPlugin:Lcom/android/systemui/plugins/AllAppsRow;

.field public final mView:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/android/systemui/plugins/AllAppsRow;Lcom/android/launcher3/allapps/FloatingHeaderView;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/allapps/PluginHeaderRow;->mPlugin:Lcom/android/systemui/plugins/AllAppsRow;

    invoke-interface {p1, p2}, Lcom/android/systemui/plugins/AllAppsRow;->setup(Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/android/launcher3/allapps/PluginHeaderRow;->mView:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public getExpectedHeight()I
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/allapps/PluginHeaderRow;->mPlugin:Lcom/android/systemui/plugins/AllAppsRow;

    invoke-interface {p0}, Lcom/android/systemui/plugins/AllAppsRow;->getExpectedHeight()I

    move-result p0

    return p0
.end method

.method public getFocusedChild()Landroid/view/View;
    .registers 1

    const/4 p0, 0x0

    return-object p0
.end method

.method public getTypeClass()Ljava/lang/Class;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "Lcom/android/launcher3/allapps/PluginHeaderRow;",
            ">;"
        }
    .end annotation

    const-class p0, Lcom/android/launcher3/allapps/PluginHeaderRow;

    return-object p0
.end method

.method public hasVisibleContent()Z
    .registers 1

    const/4 p0, 0x1

    return p0
.end method

.method public setInsets(Landroid/graphics/Rect;Lcom/android/launcher3/DeviceProfile;)V
    .registers 3

    return-void
.end method

.method public setVerticalScroll(IZ)V
    .registers 5

    iget-object v0, p0, Lcom/android/launcher3/allapps/PluginHeaderRow;->mView:Landroid/view/View;

    if-eqz p2, :cond_6

    const/4 v1, 0x4

    goto :goto_7

    :cond_6
    const/4 v1, 0x0

    :goto_7
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    if-nez p2, :cond_12

    iget-object p0, p0, Lcom/android/launcher3/allapps/PluginHeaderRow;->mView:Landroid/view/View;

    int-to-float p1, p1

    invoke-virtual {p0, p1}, Landroid/view/View;->setTranslationY(F)V

    :cond_12
    return-void
.end method

.method public setup(Lcom/android/launcher3/allapps/FloatingHeaderView;[Lcom/android/launcher3/allapps/FloatingHeaderRow;Z)V
    .registers 4

    return-void
.end method

.method public shouldDraw()Z
    .registers 1

    const/4 p0, 0x1

    return p0
.end method
