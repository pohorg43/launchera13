.class public Lcom/android/launcher/folder/recommend/view/RecommendEntryAdapter;
.super Lcom/android/launcher/views/VHBasePageRecyclerAdapter;
.source ""

# interfaces
.implements Lcom/android/launcher/folder/recommend/view/RecommendAdapterMethods;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher/folder/recommend/view/RecommendEntryAdapter$OnLoadedAnimatorReadyPlay;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/launcher/views/VHBasePageRecyclerAdapter<",
        "Lcom/android/launcher/folder/recommend/bean/DataBean;",
        ">;",
        "Lcom/android/launcher/folder/recommend/view/RecommendAdapterMethods;"
    }
.end annotation


# static fields
.field private static final DARK_MODE_COLOR:I = 0xd6d6d6

.field private static final DARK_MODE_COLOR_FILTER:Landroid/graphics/ColorFilter;

.field public static final ITEMS_PAGE_NUM:I = 0x5

.field public static final ITEM_COUNT_ONE_PAGE:I = 0x4

.field public static final RECOMMEND_COUNT:I = 0x14

.field private static final TAG:Ljava/lang/String; = "RecommendEntryAdapter"


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

.field private mBubbleTextViewSize:F

.field private mDarkIconEnabled:Z

.field private mOnLoadedAnimatorReadyPlay:Lcom/android/launcher/folder/recommend/view/RecommendEntryAdapter$OnLoadedAnimatorReadyPlay;

.field private mPageAnimateForbidden:Z


# direct methods
.method public static constructor <clinit>()V
    .registers 3

    new-instance v0, Landroid/graphics/LightingColorFilter;

    const v1, 0xd6d6d6

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/graphics/LightingColorFilter;-><init>(II)V

    sput-object v0, Lcom/android/launcher/folder/recommend/view/RecommendEntryAdapter;->DARK_MODE_COLOR_FILTER:Landroid/graphics/ColorFilter;

    return-void
.end method

.method public constructor <init>(Lcom/android/launcher3/Launcher;Ljava/util/ArrayList;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/launcher3/Launcher;",
            "Ljava/util/ArrayList<",
            "Lcom/android/launcher/folder/recommend/bean/DataBean;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x4

    invoke-direct {p0, p1, p2, v0}, Lcom/android/launcher/views/VHBasePageRecyclerAdapter;-><init>(Landroid/content/Context;Ljava/util/ArrayList;I)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/launcher/folder/recommend/view/RecommendEntryAdapter;->mAnimatorList:Ljava/util/List;

    const/high16 v0, -0x40800000  # -1.0f

    iput v0, p0, Lcom/android/launcher/folder/recommend/view/RecommendEntryAdapter;->mBubbleTextViewSize:F

    iput-object p1, p0, Lcom/android/launcher/views/VHBasePageRecyclerAdapter;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/launcher/views/VHBasePageRecyclerAdapter;->mData:Ljava/util/ArrayList;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/launcher/views/VHBasePageRecyclerAdapter;->mEmptyDataEnable:Z

    return-void
.end method


# virtual methods
.method public bindData(Landroid/view/View;Lcom/android/launcher/folder/recommend/bean/DataBean;)V
    .registers 3

    return-void
.end method

.method public bindData(Landroid/view/View;Lcom/android/launcher/folder/recommend/bean/DataBean;II)V
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
    if-eqz v6, :cond_30

    const-string v7, ""

    goto :goto_34

    :cond_30
    invoke-virtual {p2}, Lcom/android/launcher/folder/recommend/bean/DataBean;->getAppName()Ljava/lang/String;

    move-result-object v7

    :goto_34
    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget v7, p0, Lcom/android/launcher/folder/recommend/view/RecommendEntryAdapter;->mBubbleTextViewSize:F

    const/high16 v8, -0x40800000  # -1.0f

    cmpl-float v8, v7, v8

    if-eqz v8, :cond_42

    invoke-virtual {v1, v5, v7}, Landroid/widget/TextView;->setTextSize(IF)V

    :cond_42
    if-nez v6, :cond_54

    invoke-virtual {p2}, Lcom/android/launcher/folder/recommend/bean/DataBean;->getAppName()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_54

    invoke-static {v1}, Lcom/android/launcher/wallpaper/WallpaperUtil;->updateTextColor(Landroid/widget/TextView;)V

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setForceDarkAllowed(Z)V

    :cond_54
    if-eqz v6, :cond_58

    const/4 v7, 0x0

    goto :goto_5c

    :cond_58
    invoke-virtual {p2}, Lcom/android/launcher/folder/recommend/bean/DataBean;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v7

    :goto_5c
    invoke-virtual {v0, v7}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    if-nez v6, :cond_78

    invoke-virtual {p2}, Lcom/android/launcher/folder/recommend/bean/DataBean;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v7

    if-eqz v7, :cond_78

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    iget-boolean v7, p0, Lcom/android/launcher/folder/recommend/view/RecommendEntryAdapter;->mDarkIconEnabled:Z

    if-eqz v7, :cond_74

    sget-object v7, Lcom/android/launcher/folder/recommend/view/RecommendEntryAdapter;->DARK_MODE_COLOR_FILTER:Landroid/graphics/ColorFilter;

    invoke-virtual {v0, v7}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    goto :goto_84

    :cond_74
    invoke-virtual {v0}, Landroid/widget/ImageView;->clearColorFilter()V

    goto :goto_84

    :cond_78
    iget-object v7, p0, Lcom/android/launcher/views/VHBasePageRecyclerAdapter;->mContext:Landroid/content/Context;

    const v8, 0x7f080732

    invoke-virtual {v7, v8}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    invoke-virtual {v0, v7}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :goto_84
    const/4 v7, 0x4

    if-eqz v6, :cond_88

    goto :goto_8e

    :cond_88
    invoke-virtual {p2}, Lcom/android/launcher/folder/recommend/bean/DataBean;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v8

    if-nez v8, :cond_90

    :goto_8e
    move v8, v5

    goto :goto_91

    :cond_90
    move v8, v7

    :goto_91
    invoke-virtual {v2, v8}, Landroid/view/View;->setVisibility(I)V

    if-eqz v6, :cond_97

    goto :goto_9d

    :cond_97
    invoke-virtual {p2}, Lcom/android/launcher/folder/recommend/bean/DataBean;->isDownloaded()Z

    move-result p2

    if-eqz p2, :cond_9f

    :goto_9d
    move p2, v7

    goto :goto_a0

    :cond_9f
    move p2, v5

    :goto_a0
    invoke-virtual {v3, p2}, Landroid/widget/ImageView;->setVisibility(I)V

    invoke-virtual {v3, v5}, Landroid/widget/ImageView;->setForceDarkAllowed(Z)V

    if-nez p4, :cond_df

    iget-boolean p2, p0, Lcom/android/launcher/folder/recommend/view/RecommendEntryAdapter;->mPageAnimateForbidden:Z

    if-nez p2, :cond_df

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p2

    const/4 v6, 0x3

    if-eqz p2, :cond_c5

    iget-object p2, p0, Lcom/android/launcher/folder/recommend/view/RecommendEntryAdapter;->mAnimatorList:Ljava/util/List;

    new-array v8, v6, [Landroid/view/View;

    aput-object v0, v8, v5

    aput-object v1, v8, v4

    const/4 v0, 0x2

    aput-object v3, v8, v0

    invoke-static {v2, v8}, Lcom/android/launcher/folder/recommend/RecommendUtils;->animateLoadComplete(Lcom/coui/appcompat/progressbar/COUILoadingView;[Landroid/view/View;)Landroid/animation/AnimatorSet;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_c5
    iget-object p2, p0, Lcom/android/launcher/folder/recommend/view/RecommendEntryAdapter;->mOnLoadedAnimatorReadyPlay:Lcom/android/launcher/folder/recommend/view/RecommendEntryAdapter$OnLoadedAnimatorReadyPlay;

    if-eqz p2, :cond_df

    if-ne p3, v6, :cond_df

    new-instance p2, Landroid/animation/AnimatorSet;

    invoke-direct {p2}, Landroid/animation/AnimatorSet;-><init>()V

    iget-object v0, p0, Lcom/android/launcher/folder/recommend/view/RecommendEntryAdapter;->mAnimatorList:Ljava/util/List;

    invoke-virtual {p2, v0}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    iget-object v0, p0, Lcom/android/launcher/folder/recommend/view/RecommendEntryAdapter;->mOnLoadedAnimatorReadyPlay:Lcom/android/launcher/folder/recommend/view/RecommendEntryAdapter$OnLoadedAnimatorReadyPlay;

    invoke-interface {v0, p2}, Lcom/android/launcher/folder/recommend/view/RecommendEntryAdapter$OnLoadedAnimatorReadyPlay;->onReady(Landroid/animation/Animator;)V

    iget-object p2, p0, Lcom/android/launcher/folder/recommend/view/RecommendEntryAdapter;->mAnimatorList:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->clear()V

    :cond_df
    invoke-virtual {p0}, Lcom/android/launcher/views/VHBasePageRecyclerAdapter;->getDataSize()I

    move-result p2

    if-lez p2, :cond_10e

    invoke-virtual {p0}, Lcom/android/launcher/views/VHBasePageRecyclerAdapter;->getDataPageCount()I

    move-result p2

    rem-int p2, p4, p2

    mul-int/2addr p2, v7

    add-int/2addr p2, p3

    invoke-virtual {p0}, Lcom/android/launcher/views/VHBasePageRecyclerAdapter;->getDataSize()I

    move-result p0

    if-lt p2, p0, :cond_10e

    invoke-virtual {p1, v7}, Landroid/view/View;->setVisibility(I)V

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p1, "set item INVISIBLE position="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", page="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "RecommendEntryAdapter"

    invoke-static {p0, p4, p1}, Lcom/android/common/config/h;->a(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    :cond_10e
    return-void
.end method

.method public bridge synthetic bindData(Landroid/view/View;Ljava/lang/Object;)V
    .registers 3

    check-cast p2, Lcom/android/launcher/folder/recommend/bean/DataBean;

    invoke-virtual {p0, p1, p2}, Lcom/android/launcher/folder/recommend/view/RecommendEntryAdapter;->bindData(Landroid/view/View;Lcom/android/launcher/folder/recommend/bean/DataBean;)V

    return-void
.end method

.method public bridge synthetic bindData(Landroid/view/View;Ljava/lang/Object;II)V
    .registers 5

    check-cast p2, Lcom/android/launcher/folder/recommend/bean/DataBean;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/launcher/folder/recommend/view/RecommendEntryAdapter;->bindData(Landroid/view/View;Lcom/android/launcher/folder/recommend/bean/DataBean;II)V

    return-void
.end method

.method public getItemCount()I
    .registers 2

    invoke-virtual {p0}, Lcom/android/launcher/views/VHBasePageRecyclerAdapter;->getDataPageCount()I

    move-result p0

    const/4 v0, 0x5

    invoke-static {p0, v0}, Ljava/lang/Math;->min(II)I

    move-result p0

    return p0
.end method

.method public getItemLayoutId()I
    .registers 1

    const p0, 0x7f0d0178

    return p0
.end method

.method public getPageItemLayoutId()I
    .registers 1

    const p0, 0x7f0d0179

    return p0
.end method

.method public getSelectableView(Landroid/view/View;)Landroid/view/View;
    .registers 2

    const/4 p0, 0x0

    return-object p0
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .registers 3

    check-cast p1, Lcom/android/launcher/views/BasePageItemViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/android/launcher/folder/recommend/view/RecommendEntryAdapter;->onBindViewHolder(Lcom/android/launcher/views/BasePageItemViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/android/launcher/views/BasePageItemViewHolder;I)V
    .registers 3

    invoke-super {p0, p1, p2}, Lcom/android/launcher/views/VHBasePageRecyclerAdapter;->onBindViewHolder(Lcom/android/launcher/views/BasePageItemViewHolder;I)V

    return-void
.end method

.method public setBubbleTextViewSize(F)V
    .registers 3

    iput p1, p0, Lcom/android/launcher/folder/recommend/view/RecommendEntryAdapter;->mBubbleTextViewSize:F

    iget-object p1, p0, Lcom/android/launcher/views/VHBasePageRecyclerAdapter;->mContext:Landroid/content/Context;

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
    iput-boolean p1, p0, Lcom/android/launcher/folder/recommend/view/RecommendEntryAdapter;->mDarkIconEnabled:Z

    invoke-static {}, Lcom/android/launcher/theme/LauncherIconConfig;->isDarkModeIcon()Z

    move-result v0

    and-int/2addr p1, v0

    iput-boolean p1, p0, Lcom/android/launcher/folder/recommend/view/RecommendEntryAdapter;->mDarkIconEnabled:Z

    return-void
.end method

.method public setOnLoadedAnimatorReadyPlay(Lcom/android/launcher/folder/recommend/view/RecommendEntryAdapter$OnLoadedAnimatorReadyPlay;)V
    .registers 2

    iput-object p1, p0, Lcom/android/launcher/folder/recommend/view/RecommendEntryAdapter;->mOnLoadedAnimatorReadyPlay:Lcom/android/launcher/folder/recommend/view/RecommendEntryAdapter$OnLoadedAnimatorReadyPlay;

    return-void
.end method

.method public setPageAnimateForbidden(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/launcher/folder/recommend/view/RecommendEntryAdapter;->mPageAnimateForbidden:Z

    return-void
.end method

.method public supportLongPressed()Z
    .registers 1

    const/4 p0, 0x0

    return p0
.end method
