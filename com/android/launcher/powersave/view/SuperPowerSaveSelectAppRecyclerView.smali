.class public Lcom/android/launcher/powersave/view/SuperPowerSaveSelectAppRecyclerView;
.super Landroidx/recyclerview/widget/RecyclerView;
.source ""


# static fields
.field private static final ANIMATE_DURATION:I = 0x96

.field private static final TAG:Ljava/lang/String; = "SuperPowerSaveSelectAppRecyclerView"


# instance fields
.field private mApps:Lcom/android/launcher/powersave/model/SuperPowerSaveSelectAppsList;

.field private mEmptySearchBackground:Lcom/android/launcher3/allapps/AllAppsBackgroundDrawable;

.field private final mEmptySearchBackgroundTopOffset:I

.field private final mSelectActivity:Lcom/android/launcher/powersave/SuperPowerSaveSelectAppActivity;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/launcher/powersave/view/SuperPowerSaveSelectAppRecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/launcher/powersave/view/SuperPowerSaveSelectAppRecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/launcher/powersave/view/SuperPowerSaveSelectAppRecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .registers 5

    invoke-direct {p0, p1, p2, p3}, Landroidx/recyclerview/widget/RecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const p3, 0x7f0700f7

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, Lcom/android/launcher/powersave/view/SuperPowerSaveSelectAppRecyclerView;->mEmptySearchBackgroundTopOffset:I

    check-cast p1, Lcom/android/launcher/powersave/SuperPowerSaveSelectAppActivity;

    iput-object p1, p0, Lcom/android/launcher/powersave/view/SuperPowerSaveSelectAppRecyclerView;->mSelectActivity:Lcom/android/launcher/powersave/SuperPowerSaveSelectAppActivity;

    return-void
.end method

.method private updateEmptySearchBackgroundBounds()V
    .registers 5

    iget-object v0, p0, Lcom/android/launcher/powersave/view/SuperPowerSaveSelectAppRecyclerView;->mEmptySearchBackground:Lcom/android/launcher3/allapps/AllAppsBackgroundDrawable;

    if-nez v0, :cond_5

    return-void

    :cond_5
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v0

    iget-object v1, p0, Lcom/android/launcher/powersave/view/SuperPowerSaveSelectAppRecyclerView;->mEmptySearchBackground:Lcom/android/launcher3/allapps/AllAppsBackgroundDrawable;

    invoke-virtual {v1}, Lcom/android/launcher3/allapps/AllAppsBackgroundDrawable;->getIntrinsicWidth()I

    move-result v1

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    iget v1, p0, Lcom/android/launcher/powersave/view/SuperPowerSaveSelectAppRecyclerView;->mEmptySearchBackgroundTopOffset:I

    iget-object v2, p0, Lcom/android/launcher/powersave/view/SuperPowerSaveSelectAppRecyclerView;->mEmptySearchBackground:Lcom/android/launcher3/allapps/AllAppsBackgroundDrawable;

    invoke-virtual {v2}, Lcom/android/launcher3/allapps/AllAppsBackgroundDrawable;->getIntrinsicWidth()I

    move-result v3

    add-int/2addr v3, v0

    iget-object p0, p0, Lcom/android/launcher/powersave/view/SuperPowerSaveSelectAppRecyclerView;->mEmptySearchBackground:Lcom/android/launcher3/allapps/AllAppsBackgroundDrawable;

    invoke-virtual {p0}, Lcom/android/launcher3/allapps/AllAppsBackgroundDrawable;->getIntrinsicHeight()I

    move-result p0

    add-int/2addr p0, v1

    invoke-virtual {v2, v0, v1, v3, p0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    return-void
.end method


# virtual methods
.method public getApps()Lcom/android/launcher/powersave/model/SuperPowerSaveSelectAppsList;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher/powersave/view/SuperPowerSaveSelectAppRecyclerView;->mApps:Lcom/android/launcher/powersave/model/SuperPowerSaveSelectAppsList;

    return-object p0
.end method

.method public onSearchResultsChanged()V
    .registers 3

    invoke-virtual {p0}, Lcom/android/launcher/powersave/view/SuperPowerSaveSelectAppRecyclerView;->scrollToTop()V

    iget-object v0, p0, Lcom/android/launcher/powersave/view/SuperPowerSaveSelectAppRecyclerView;->mApps:Lcom/android/launcher/powersave/model/SuperPowerSaveSelectAppsList;

    invoke-virtual {v0}, Lcom/android/launcher/powersave/model/SuperPowerSaveSelectAppsList;->hasNoFilteredResults()Z

    move-result v0

    if-eqz v0, :cond_30

    iget-object v0, p0, Lcom/android/launcher/powersave/view/SuperPowerSaveSelectAppRecyclerView;->mEmptySearchBackground:Lcom/android/launcher3/allapps/AllAppsBackgroundDrawable;

    if-nez v0, :cond_26

    new-instance v0, Lcom/android/launcher3/allapps/AllAppsBackgroundDrawable;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/launcher3/allapps/AllAppsBackgroundDrawable;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/launcher/powersave/view/SuperPowerSaveSelectAppRecyclerView;->mEmptySearchBackground:Lcom/android/launcher3/allapps/AllAppsBackgroundDrawable;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/launcher3/allapps/AllAppsBackgroundDrawable;->setAlpha(I)V

    iget-object v0, p0, Lcom/android/launcher/powersave/view/SuperPowerSaveSelectAppRecyclerView;->mEmptySearchBackground:Lcom/android/launcher3/allapps/AllAppsBackgroundDrawable;

    invoke-virtual {v0, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    invoke-direct {p0}, Lcom/android/launcher/powersave/view/SuperPowerSaveSelectAppRecyclerView;->updateEmptySearchBackgroundBounds()V

    :cond_26
    iget-object p0, p0, Lcom/android/launcher/powersave/view/SuperPowerSaveSelectAppRecyclerView;->mEmptySearchBackground:Lcom/android/launcher3/allapps/AllAppsBackgroundDrawable;

    const/high16 v0, 0x3f800000  # 1.0f

    const/16 v1, 0x96

    invoke-virtual {p0, v0, v1}, Lcom/android/launcher3/allapps/AllAppsBackgroundDrawable;->animateBgAlpha(FI)V

    goto :goto_38

    :cond_30
    iget-object p0, p0, Lcom/android/launcher/powersave/view/SuperPowerSaveSelectAppRecyclerView;->mEmptySearchBackground:Lcom/android/launcher3/allapps/AllAppsBackgroundDrawable;

    if-eqz p0, :cond_38

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/launcher3/allapps/AllAppsBackgroundDrawable;->setBgAlpha(F)V

    :cond_38
    :goto_38
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-eqz v0, :cond_d

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_14

    :cond_d
    iget-object v0, p0, Lcom/android/launcher/powersave/view/SuperPowerSaveSelectAppRecyclerView;->mSelectActivity:Lcom/android/launcher/powersave/SuperPowerSaveSelectAppActivity;

    if-eqz v0, :cond_14

    invoke-virtual {v0}, Lcom/android/launcher/powersave/SuperPowerSaveSelectAppActivity;->hideKeyBoard()V

    :cond_14
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public scrollToTop()V
    .registers 2

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView;->scrollToPosition(I)V

    return-void
.end method

.method public setApps(Lcom/android/launcher/powersave/model/SuperPowerSaveSelectAppsList;)V
    .registers 2

    iput-object p1, p0, Lcom/android/launcher/powersave/view/SuperPowerSaveSelectAppRecyclerView;->mApps:Lcom/android/launcher/powersave/model/SuperPowerSaveSelectAppsList;

    return-void
.end method

.method public verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .registers 3

    iget-object v0, p0, Lcom/android/launcher/powersave/view/SuperPowerSaveSelectAppRecyclerView;->mEmptySearchBackground:Lcom/android/launcher3/allapps/AllAppsBackgroundDrawable;

    if-eq p1, v0, :cond_d

    invoke-super {p0, p1}, Landroid/view/View;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result p0

    if-eqz p0, :cond_b

    goto :goto_d

    :cond_b
    const/4 p0, 0x0

    goto :goto_e

    :cond_d
    :goto_d
    const/4 p0, 0x1

    :goto_e
    return p0
.end method
