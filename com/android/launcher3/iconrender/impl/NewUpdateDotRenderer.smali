.class public Lcom/android/launcher3/iconrender/impl/NewUpdateDotRenderer;
.super Lcom/android/launcher3/iconrender/AbstractTitlePrefixRenderer;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/iconrender/impl/NewUpdateDotRenderer$NewUpdateDrawable;
    }
.end annotation


# static fields
.field public static final PRIORITY:I = 0xa

.field private static final TAG:Ljava/lang/String; = "NewUpdateDotRenderer"


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/launcher3/iconrender/RenderManager;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/launcher3/iconrender/AbstractTitlePrefixRenderer;-><init>(Landroid/content/Context;Lcom/android/launcher3/iconrender/RenderManager;)V

    return-void
.end method

.method private isAppUpdateDotEnable(Landroid/content/Context;)Z
    .registers 2

    sget-boolean p0, Lcom/android/common/config/FeatureOption;->isSupportAppUpdateDotSwitch:Z

    if-nez p0, :cond_6

    const/4 p0, 0x1

    return p0

    :cond_6
    invoke-static {p1}, Lcom/android/launcher3/dot/AppUpdateDotManager;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/dot/AppUpdateDotManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/launcher3/dot/AppUpdateDotManager;->isAppUpdateDotSwitchOpen()Z

    move-result p0

    return p0
.end method


# virtual methods
.method public accept(Lcom/android/launcher3/iconrender/RenderManager;Landroid/content/Context;Lcom/android/launcher3/model/data/ItemInfoWithIcon;Lcom/android/launcher3/iconrender/TitleRenderParams;)Z
    .registers 6

    invoke-static {p2}, Lcom/android/launcher/powersave/SuperPowerModeManager;->getInstance(Landroid/content/Context;)Lcom/android/launcher/powersave/SuperPowerModeManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/launcher/powersave/SuperPowerModeManager;->isInSuperPowerMode()Z

    move-result p1

    const/4 p4, 0x0

    if-nez p1, :cond_25

    const/4 p1, 0x0

    instance-of v0, p2, Lcom/android/launcher3/Launcher;

    if-eqz v0, :cond_14

    invoke-static {p2}, Lcom/android/launcher3/Launcher;->getLauncher(Landroid/content/Context;)Lcom/android/launcher3/Launcher;

    move-result-object p1

    :cond_14
    if-eqz p1, :cond_24

    invoke-virtual {p1}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/OplusWorkspace;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/android/launcher3/util/OplusIconFallenAnimationManager;->getInstance(Lcom/android/launcher3/OplusWorkspace;Lcom/android/launcher3/Launcher;)Lcom/android/launcher3/util/OplusIconFallenAnimationManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/launcher3/util/OplusIconFallenAnimationManager;->isHandingIconFallenState()Z

    move-result p1

    if-eqz p1, :cond_25

    :cond_24
    return p4

    :cond_25
    invoke-direct {p0, p2}, Lcom/android/launcher3/iconrender/impl/NewUpdateDotRenderer;->isAppUpdateDotEnable(Landroid/content/Context;)Z

    move-result p0

    if-nez p0, :cond_2c

    return p4

    :cond_2c
    invoke-static {}, Lcom/android/launcher/NewUpdatedAppsManager;->getInstance()Lcom/android/launcher/NewUpdatedAppsManager;

    move-result-object p0

    invoke-virtual {p3}, Lcom/android/launcher3/model/data/ItemInfo;->getTargetPackage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/launcher/NewUpdatedAppsManager;->isNewUpdatedApp(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_52

    const/4 p0, 0x2

    new-array p0, p0, [Ljava/lang/Object;

    aput-object p3, p0, p4

    const/4 p1, 0x1

    iget-boolean p2, p3, Lcom/android/launcher3/model/data/ItemInfoWithIcon;->mIsNewUpdated:Z

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    aput-object p2, p0, p1

    const-string p1, "NewUpdateDotRenderer"

    const-string p2, "app:%s,newUpdate:%s"

    invoke-static {p1, p2, p0}, Lcom/android/launcher3/iconrender/RenderManager;->log(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-boolean p0, p3, Lcom/android/launcher3/model/data/ItemInfoWithIcon;->mIsNewUpdated:Z

    return p0

    :cond_52
    return p4
.end method

.method public createPrefixDrawable(Landroid/content/Context;Lcom/android/launcher3/iconrender/TitleRenderParams;)Landroid/graphics/drawable/Drawable;
    .registers 4

    new-instance p0, Lcom/android/launcher3/iconrender/impl/NewUpdateDotRenderer$NewUpdateDrawable;

    invoke-direct {p0, p1}, Lcom/android/launcher3/iconrender/impl/NewUpdateDotRenderer$NewUpdateDrawable;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f070953

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f070950

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0, p2, p1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    return-object p0
.end method

.method public fitTextSize()Z
    .registers 1

    const/4 p0, 0x1

    return p0
.end method

.method public priority()I
    .registers 1

    const/16 p0, 0xa

    return p0
.end method
