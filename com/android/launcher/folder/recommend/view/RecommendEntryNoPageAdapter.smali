.class public Lcom/android/launcher/folder/recommend/view/RecommendEntryNoPageAdapter;
.super Lcom/android/launcher/folder/recommend/view/VHBaseNoPageRecyclerAdapter;
.source ""

# interfaces
.implements Lcom/android/launcher/folder/recommend/view/RecommendAdapterMethods;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher/folder/recommend/view/RecommendEntryNoPageAdapter$OnLoadedAnimatorReadyPlay;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/launcher/folder/recommend/view/VHBaseNoPageRecyclerAdapter<",
        "Lcom/android/launcher/folder/recommend/bean/DataBean;",
        ">;",
        "Lcom/android/launcher/folder/recommend/view/RecommendAdapterMethods;"
    }
.end annotation


# static fields
.field private static final DARK_MODE_COLOR:I = 0xd6d6d6

.field private static final DARK_MODE_COLOR_FILTER:Landroid/graphics/ColorFilter;

.field private static TAG:Ljava/lang/String; = "RecommendEntryNoPageAdapter"


# instance fields
.field private mAnimatorList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/animation/Animator;",
            ">;"
        }
    .end annotation
.end field

.field private mAnimatorListTransY:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/animation/Animator;",
            ">;"
        }
    .end annotation
.end field

.field private mBubbleTextViewSize:F

.field public mContext:Landroid/content/Context;

.field private mDarkIconEnabled:Z

.field private mOnLoadedAnimatorReadyPlay:Lcom/android/launcher/folder/recommend/view/RecommendEntryNoPageAdapter$OnLoadedAnimatorReadyPlay;

.field private mPageAnimateForbidden:Z

.field public spa:Landroid/util/SparseBooleanArray;


# direct methods
.method public static constructor <clinit>()V
    .registers 3

    new-instance v0, Landroid/graphics/LightingColorFilter;

    const v1, 0xd6d6d6

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/graphics/LightingColorFilter;-><init>(II)V

    sput-object v0, Lcom/android/launcher/folder/recommend/view/RecommendEntryNoPageAdapter;->DARK_MODE_COLOR_FILTER:Landroid/graphics/ColorFilter;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/ArrayList;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList<",
            "Lcom/android/launcher/folder/recommend/bean/DataBean;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Lcom/android/launcher/folder/recommend/view/VHBaseNoPageRecyclerAdapter;-><init>(Landroid/content/Context;Ljava/util/ArrayList;)V

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/android/launcher/folder/recommend/view/RecommendEntryNoPageAdapter;->mAnimatorList:Ljava/util/List;

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/android/launcher/folder/recommend/view/RecommendEntryNoPageAdapter;->mAnimatorListTransY:Ljava/util/List;

    const/high16 p2, -0x40800000  # -1.0f

    iput p2, p0, Lcom/android/launcher/folder/recommend/view/RecommendEntryNoPageAdapter;->mBubbleTextViewSize:F

    new-instance p2, Landroid/util/SparseBooleanArray;

    const/4 v0, 0x5

    invoke-direct {p2, v0}, Landroid/util/SparseBooleanArray;-><init>(I)V

    iput-object p2, p0, Lcom/android/launcher/folder/recommend/view/RecommendEntryNoPageAdapter;->spa:Landroid/util/SparseBooleanArray;

    iput-object p1, p0, Lcom/android/launcher/folder/recommend/view/RecommendEntryNoPageAdapter;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public bindData(Landroid/view/View;Lcom/android/launcher/folder/recommend/bean/DataBean;I)V
    .registers 14

    const v0, 0x7f0a040b

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const v1, 0x7f0a0410

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v2, 0x7f0a040d

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/coui/appcompat/progressbar/COUILoadingView;

    const v3, 0x7f0a040a

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-nez p2, :cond_2a

    move v6, v4

    goto :goto_2b

    :cond_2a
    move v6, v5

    :goto_2b
    if-nez p2, :cond_2f

    :goto_2d
    move v7, v4

    goto :goto_37

    :cond_2f
    invoke-virtual {p2}, Lcom/android/launcher/folder/recommend/bean/DataBean;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v7

    if-nez v7, :cond_36

    goto :goto_2d

    :cond_36
    move v7, v5

    :goto_37
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "bindData: position: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, " image: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v9, " nullData: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v9, " nullDrawable: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v8, "RecommendEntryNoPageAdapter"

    invoke-static {v8, v7}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v6, :cond_6a

    const-string v7, ""

    goto :goto_6e

    :cond_6a
    invoke-virtual {p2}, Lcom/android/launcher/folder/recommend/bean/DataBean;->getAppName()Ljava/lang/String;

    move-result-object v7

    :goto_6e
    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget v7, p0, Lcom/android/launcher/folder/recommend/view/RecommendEntryNoPageAdapter;->mBubbleTextViewSize:F

    const/high16 v8, -0x40800000  # -1.0f

    cmpl-float v8, v7, v8

    if-eqz v8, :cond_7c

    invoke-virtual {v1, v5, v7}, Landroid/widget/TextView;->setTextSize(IF)V

    :cond_7c
    if-nez v6, :cond_8e

    invoke-virtual {p2}, Lcom/android/launcher/folder/recommend/bean/DataBean;->getAppName()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_8e

    invoke-static {v1}, Lcom/android/launcher/wallpaper/WallpaperUtil;->updateTextColor(Landroid/widget/TextView;)V

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setForceDarkAllowed(Z)V

    :cond_8e
    if-eqz v6, :cond_92

    const/4 v7, 0x0

    goto :goto_96

    :cond_92
    invoke-virtual {p2}, Lcom/android/launcher/folder/recommend/bean/DataBean;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v7

    :goto_96
    invoke-virtual {v0, v7}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    if-nez v6, :cond_b2

    invoke-virtual {p2}, Lcom/android/launcher/folder/recommend/bean/DataBean;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v7

    if-eqz v7, :cond_b2

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    iget-boolean v7, p0, Lcom/android/launcher/folder/recommend/view/RecommendEntryNoPageAdapter;->mDarkIconEnabled:Z

    if-eqz v7, :cond_ae

    sget-object v7, Lcom/android/launcher/folder/recommend/view/RecommendEntryNoPageAdapter;->DARK_MODE_COLOR_FILTER:Landroid/graphics/ColorFilter;

    invoke-virtual {v0, v7}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    goto :goto_be

    :cond_ae
    invoke-virtual {v0}, Landroid/widget/ImageView;->clearColorFilter()V

    goto :goto_be

    :cond_b2
    iget-object v7, p0, Lcom/android/launcher/folder/recommend/view/RecommendEntryNoPageAdapter;->mContext:Landroid/content/Context;

    const v8, 0x7f080732

    invoke-virtual {v7, v8}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    invoke-virtual {v0, v7}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :goto_be
    const/4 v7, 0x4

    if-eqz v6, :cond_c3

    :goto_c1
    move v8, v5

    goto :goto_cb

    :cond_c3
    invoke-virtual {p2}, Lcom/android/launcher/folder/recommend/bean/DataBean;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v8

    if-nez v8, :cond_ca

    goto :goto_c1

    :cond_ca
    move v8, v7

    :goto_cb
    invoke-virtual {v2, v8}, Landroid/view/View;->setVisibility(I)V

    if-eqz v6, :cond_d1

    goto :goto_d9

    :cond_d1
    invoke-virtual {p2}, Lcom/android/launcher/folder/recommend/bean/DataBean;->isDownloaded()Z

    move-result p2

    if-eqz p2, :cond_d8

    goto :goto_d9

    :cond_d8
    move v7, v5

    :goto_d9
    invoke-virtual {v3, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    invoke-virtual {v3, v5}, Landroid/widget/ImageView;->setForceDarkAllowed(Z)V

    if-ltz p3, :cond_141

    const/4 p2, 0x5

    if-ge p3, p2, :cond_141

    iget-boolean v6, p0, Lcom/android/launcher/folder/recommend/view/RecommendEntryNoPageAdapter;->mPageAnimateForbidden:Z

    if-nez v6, :cond_141

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v6

    if-eqz v6, :cond_119

    iget-object v6, p0, Lcom/android/launcher/folder/recommend/view/RecommendEntryNoPageAdapter;->spa:Landroid/util/SparseBooleanArray;

    invoke-virtual {v6, p3}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v6

    if-nez v6, :cond_119

    iget-object v6, p0, Lcom/android/launcher/folder/recommend/view/RecommendEntryNoPageAdapter;->spa:Landroid/util/SparseBooleanArray;

    invoke-virtual {v6, p3, v4}, Landroid/util/SparseBooleanArray;->put(IZ)V

    iget-object v6, p0, Lcom/android/launcher/folder/recommend/view/RecommendEntryNoPageAdapter;->mAnimatorList:Ljava/util/List;

    const/4 v7, 0x3

    new-array v7, v7, [Landroid/view/View;

    aput-object v0, v7, v5

    aput-object v1, v7, v4

    const/4 v0, 0x2

    aput-object v3, v7, v0

    invoke-static {v2, v7}, Lcom/android/launcher/folder/recommend/RecommendUtils;->animateLoadComplete(Lcom/coui/appcompat/progressbar/COUILoadingView;[Landroid/view/View;)Landroid/animation/AnimatorSet;

    move-result-object v0

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/launcher/folder/recommend/view/RecommendEntryNoPageAdapter;->mAnimatorListTransY:Ljava/util/List;

    iget-object v1, p0, Lcom/android/launcher/folder/recommend/view/RecommendEntryNoPageAdapter;->mContext:Landroid/content/Context;

    invoke-static {p1, p3, v1}, Lcom/android/launcher/folder/recommend/RecommendUtils;->animateTransY(Landroid/view/View;ILandroid/content/Context;)Landroid/animation/AnimatorSet;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_119
    iget-object p1, p0, Lcom/android/launcher/folder/recommend/view/RecommendEntryNoPageAdapter;->mOnLoadedAnimatorReadyPlay:Lcom/android/launcher/folder/recommend/view/RecommendEntryNoPageAdapter$OnLoadedAnimatorReadyPlay;

    if-eqz p1, :cond_141

    iget-object p1, p0, Lcom/android/launcher/folder/recommend/view/RecommendEntryNoPageAdapter;->mAnimatorList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-ne p1, p2, :cond_141

    new-instance p1, Ljava/util/ArrayList;

    iget-object p2, p0, Lcom/android/launcher/folder/recommend/view/RecommendEntryNoPageAdapter;->mAnimatorList:Ljava/util/List;

    invoke-direct {p1, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    new-instance p2, Landroid/animation/AnimatorSet;

    invoke-direct {p2}, Landroid/animation/AnimatorSet;-><init>()V

    invoke-virtual {p2, p1}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    iget-object p1, p0, Lcom/android/launcher/folder/recommend/view/RecommendEntryNoPageAdapter;->mOnLoadedAnimatorReadyPlay:Lcom/android/launcher/folder/recommend/view/RecommendEntryNoPageAdapter$OnLoadedAnimatorReadyPlay;

    invoke-interface {p1, p2}, Lcom/android/launcher/folder/recommend/view/RecommendEntryNoPageAdapter$OnLoadedAnimatorReadyPlay;->onReady(Landroid/animation/Animator;)V

    iget-object p1, p0, Lcom/android/launcher/folder/recommend/view/RecommendEntryNoPageAdapter;->mAnimatorList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    invoke-virtual {p0, v4}, Lcom/android/launcher/folder/recommend/view/RecommendEntryNoPageAdapter;->setPageAnimateForbidden(Z)V

    :cond_141
    return-void
.end method

.method public bridge synthetic bindData(Landroid/view/View;Ljava/lang/Object;I)V
    .registers 4

    check-cast p2, Lcom/android/launcher/folder/recommend/bean/DataBean;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/launcher/folder/recommend/view/RecommendEntryNoPageAdapter;->bindData(Landroid/view/View;Lcom/android/launcher/folder/recommend/bean/DataBean;I)V

    return-void
.end method

.method public getItemCount()I
    .registers 2

    invoke-super {p0}, Lcom/android/launcher/folder/recommend/view/VHBaseNoPageRecyclerAdapter;->getItemCount()I

    move-result p0

    const/4 v0, 0x5

    if-ge p0, v0, :cond_8

    move p0, v0

    :cond_8
    return p0
.end method

.method public getItemLayoutId()I
    .registers 1

    const p0, 0x7f0d0178

    return p0
.end method

.method public setBubbleTextViewSize(F)V
    .registers 3

    iput p1, p0, Lcom/android/launcher/folder/recommend/view/RecommendEntryNoPageAdapter;->mBubbleTextViewSize:F

    iget-object p1, p0, Lcom/android/launcher/folder/recommend/view/RecommendEntryNoPageAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    iget p1, p1, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 p1, p1, 0x30

    const/16 v0, 0x20

    if-ne p1, v0, :cond_16

    const/4 p1, 0x1

    goto :goto_17

    :cond_16
    const/4 p1, 0x0

    :goto_17
    iput-boolean p1, p0, Lcom/android/launcher/folder/recommend/view/RecommendEntryNoPageAdapter;->mDarkIconEnabled:Z

    invoke-static {}, Lcom/android/launcher/theme/LauncherIconConfig;->isDarkModeIcon()Z

    move-result v0

    and-int/2addr p1, v0

    iput-boolean p1, p0, Lcom/android/launcher/folder/recommend/view/RecommendEntryNoPageAdapter;->mDarkIconEnabled:Z

    return-void
.end method

.method public setOnLoadedAnimatorReadyPlay(Lcom/android/launcher/folder/recommend/view/RecommendEntryNoPageAdapter$OnLoadedAnimatorReadyPlay;)V
    .registers 2

    iput-object p1, p0, Lcom/android/launcher/folder/recommend/view/RecommendEntryNoPageAdapter;->mOnLoadedAnimatorReadyPlay:Lcom/android/launcher/folder/recommend/view/RecommendEntryNoPageAdapter$OnLoadedAnimatorReadyPlay;

    return-void
.end method

.method public setPageAnimateForbidden(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/launcher/folder/recommend/view/RecommendEntryNoPageAdapter;->mPageAnimateForbidden:Z

    return-void
.end method

.method public showWithAnimation(Ljava/lang/Runnable;)Landroid/animation/Animator;
    .registers 4

    iget-object v0, p0, Lcom/android/launcher/folder/recommend/view/RecommendEntryNoPageAdapter;->mAnimatorListTransY:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_24

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/launcher/folder/recommend/view/RecommendEntryNoPageAdapter;->mAnimatorListTransY:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    invoke-virtual {v1, v0}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    new-instance v0, Lcom/android/launcher/folder/recommend/view/RecommendEntryNoPageAdapter$1;

    invoke-direct {v0, p0, p1}, Lcom/android/launcher/folder/recommend/view/RecommendEntryNoPageAdapter$1;-><init>(Lcom/android/launcher/folder/recommend/view/RecommendEntryNoPageAdapter;Ljava/lang/Runnable;)V

    invoke-virtual {v1, v0}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->start()V

    return-object v1

    :cond_24
    const/4 p0, 0x0

    return-object p0
.end method
