.class Lcom/android/launcher3/LauncherState$3;
.super Lcom/android/launcher3/states/OplusBaseLauncherState;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/LauncherState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# direct methods
.method public constructor <init>(III)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/android/launcher3/states/OplusBaseLauncherState;-><init>(III)V

    return-void
.end method


# virtual methods
.method public getTransitionDuration(Landroid/content/Context;Z)I
    .registers 3

    const/4 p0, 0x0

    return p0
.end method

.method public getVisibleElements(Lcom/android/launcher3/Launcher;)I
    .registers 3

    invoke-virtual {p1}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/OplusWorkspace;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/PagedView;->getPageIndicator()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher/pageindicators/OplusPageIndicator;

    invoke-virtual {v0}, Lcom/android/launcher/pageindicators/OplusPageIndicator;->getSearchEntry()Lcom/android/launcher3/search/SearchEntry;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/search/SearchEntry;->isEnable()Z

    move-result v0

    if-eqz v0, :cond_1d

    invoke-super {p0, p1}, Lcom/android/launcher3/LauncherState;->getVisibleElements(Lcom/android/launcher3/Launcher;)I

    move-result p0

    and-int/lit16 p0, p0, -0x81

    or-int/lit16 p0, p0, 0x1000

    return p0

    :cond_1d
    invoke-super {p0, p1}, Lcom/android/launcher3/LauncherState;->getVisibleElements(Lcom/android/launcher3/Launcher;)I

    move-result p0

    return p0
.end method
