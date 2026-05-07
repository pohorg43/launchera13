.class public Lcom/android/launcher/operators/Customizer;
.super Ljava/lang/Object;
.source ""


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getPreferredPosition(Lcom/android/launcher3/model/data/ItemInfo;)[I
    .registers 2

    const/4 p0, 0x0

    return-object p0
.end method

.method public getWorkspaceXmlResId(Landroid/content/Context;)I
    .registers 2

    invoke-static {p1}, Lcom/android/launcher/DefaultWorkspaceConfig;->getWorkspaceXmlResId(Landroid/content/Context;)I

    move-result p0

    return p0
.end method

.method public onActivityCreated(Landroid/app/Activity;)V
    .registers 2

    return-void
.end method

.method public onAddApp(Lcom/android/launcher/Launcher;Ljava/util/List;)V
    .registers 3
    .param p2  # Ljava/util/List;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/launcher/Launcher;",
            "Ljava/util/List<",
            "Lcom/android/launcher3/model/data/AppInfo;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public onApplicationCreated(Landroid/content/Context;)V
    .registers 2

    return-void
.end method

.method public onInitAddAutoInstallApp(Landroid/content/Context;Landroid/content/ComponentName;)Z
    .registers 3

    const/4 p0, 0x1

    return p0
.end method

.method public onInitAddWidget(Landroid/content/Context;Landroid/content/ComponentName;)Z
    .registers 3

    const/4 p0, 0x1

    return p0
.end method

.method public onPreBindNoPositionItems(Landroid/content/Context;Ljava/util/List;)V
    .registers 3
    .param p2  # Ljava/util/List;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/android/launcher3/model/data/ItemInfo;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public setHasCustomized(Landroid/content/Context;)V
    .registers 2
    .param p1  # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    return-void
.end method
