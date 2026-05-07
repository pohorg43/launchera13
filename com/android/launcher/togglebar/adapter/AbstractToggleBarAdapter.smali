.class public abstract Lcom/android/launcher/togglebar/adapter/AbstractToggleBarAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher/togglebar/adapter/AbstractToggleBarAdapter$Companion;,
        Lcom/android/launcher/togglebar/adapter/AbstractToggleBarAdapter$IAdditionalAnim;,
        Lcom/android/launcher/togglebar/adapter/AbstractToggleBarAdapter$OnItemClickListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
        ">",
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "TT;>;"
    }
.end annotation


# static fields
.field public static final Companion:Lcom/android/launcher/togglebar/adapter/AbstractToggleBarAdapter$Companion;

.field private static final TAG:Ljava/lang/String; = "AbstractToggleBarAdapter"


# instance fields
.field private mAdditionalAnim:Lcom/android/launcher/togglebar/adapter/AbstractToggleBarAdapter$IAdditionalAnim;

.field private mAnimTransY:F

.field private mHaveDoneDestroyAnim:Z

.field private mItemClickListener:Lcom/android/launcher/togglebar/adapter/AbstractToggleBarAdapter$OnItemClickListener;

.field private mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/android/launcher/togglebar/adapter/AbstractToggleBarAdapter$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/launcher/togglebar/adapter/AbstractToggleBarAdapter$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/android/launcher/togglebar/adapter/AbstractToggleBarAdapter;->Companion:Lcom/android/launcher/togglebar/adapter/AbstractToggleBarAdapter$Companion;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f070c81

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Lcom/android/launcher/togglebar/adapter/AbstractToggleBarAdapter;->mAnimTransY:F

    return-void
.end method

.method public static final synthetic access$removeViewFromParent(Lcom/android/launcher/togglebar/adapter/AbstractToggleBarAdapter;Landroid/view/View;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/launcher/togglebar/adapter/AbstractToggleBarAdapter;->removeViewFromParent(Landroid/view/View;)V

    return-void
.end method

.method private final removeViewFromParent(Landroid/view/View;)V
    .registers 4

    if-nez p1, :cond_4

    const/4 p0, 0x0

    goto :goto_8

    :cond_4
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    :goto_8
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "itemDestroyAnimation end, try remove view, removedView = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", parent = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AbstractToggleBarAdapter"

    invoke-static {v1, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p0, :cond_2d

    check-cast p0, Landroid/view/ViewGroup;

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_2d
    return-void
.end method


# virtual methods
.method public final getMHaveDoneDestroyAnim()Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/launcher/togglebar/adapter/AbstractToggleBarAdapter;->mHaveDoneDestroyAnim:Z

    return p0
.end method

.method public final getMItemClickListener()Lcom/android/launcher/togglebar/adapter/AbstractToggleBarAdapter$OnItemClickListener;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher/togglebar/adapter/AbstractToggleBarAdapter;->mItemClickListener:Lcom/android/launcher/togglebar/adapter/AbstractToggleBarAdapter$OnItemClickListener;

    return-object p0
.end method

.method public final getMRecyclerView()Landroidx/recyclerview/widget/RecyclerView;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher/togglebar/adapter/AbstractToggleBarAdapter;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    return-object p0
.end method

.method public getSelectedPosition()I
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public abstract isPageViewHolder()Z
.end method

.method public final itemDestroyAnimation(Landroid/view/View;Ljava/lang/Runnable;Z)Landroid/animation/AnimatorSet;
    .registers 8

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher/togglebar/adapter/AbstractToggleBarAdapter;->mHaveDoneDestroyAnim:Z

    invoke-virtual {p0}, Lcom/android/launcher/togglebar/adapter/AbstractToggleBarAdapter;->isPageViewHolder()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz v0, :cond_16

    iget-object v0, p0, Lcom/android/launcher/togglebar/adapter/AbstractToggleBarAdapter;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    if-nez v0, :cond_11

    move-object v0, v1

    goto :goto_18

    :cond_11
    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    goto :goto_18

    :cond_16
    iget-object v0, p0, Lcom/android/launcher/togglebar/adapter/AbstractToggleBarAdapter;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    :goto_18
    if-nez v0, :cond_1e

    invoke-direct {p0, p1}, Lcom/android/launcher/togglebar/adapter/AbstractToggleBarAdapter;->removeViewFromParent(Landroid/view/View;)V

    return-object v1

    :cond_1e
    if-eqz p3, :cond_2b

    sget-object p3, Lcom/android/launcher/togglebar/animation/ToggleBarAnimHelper;->INSTANCE:Lcom/android/launcher/togglebar/animation/ToggleBarAnimHelper;

    check-cast v0, Landroid/view/ViewGroup;

    iget v3, p0, Lcom/android/launcher/togglebar/adapter/AbstractToggleBarAdapter;->mAnimTransY:F

    invoke-virtual {p3, v0, v3}, Lcom/android/launcher/togglebar/animation/ToggleBarAnimHelper;->animItemForMainUiExit(Landroid/view/ViewGroup;F)Landroid/animation/AnimatorSet;

    move-result-object p3

    goto :goto_35

    :cond_2b
    sget-object p3, Lcom/android/launcher/togglebar/animation/ToggleBarAnimHelper;->INSTANCE:Lcom/android/launcher/togglebar/animation/ToggleBarAnimHelper;

    check-cast v0, Landroid/view/ViewGroup;

    iget v3, p0, Lcom/android/launcher/togglebar/adapter/AbstractToggleBarAdapter;->mAnimTransY:F

    invoke-virtual {p3, v0, v2, v3}, Lcom/android/launcher/togglebar/animation/ToggleBarAnimHelper;->animItemForRecyclerView(Landroid/view/ViewGroup;ZF)Landroid/animation/AnimatorSet;

    move-result-object p3

    :goto_35
    if-nez p3, :cond_3a

    invoke-direct {p0, p1}, Lcom/android/launcher/togglebar/adapter/AbstractToggleBarAdapter;->removeViewFromParent(Landroid/view/View;)V

    :cond_3a
    if-nez p3, :cond_3d

    goto :goto_45

    :cond_3d
    new-instance v0, Lcom/android/launcher/togglebar/adapter/AbstractToggleBarAdapter$itemDestroyAnimation$$inlined$doOnEnd$1;

    invoke-direct {v0, p2, p0, p1}, Lcom/android/launcher/togglebar/adapter/AbstractToggleBarAdapter$itemDestroyAnimation$$inlined$doOnEnd$1;-><init>(Ljava/lang/Runnable;Lcom/android/launcher/togglebar/adapter/AbstractToggleBarAdapter;Landroid/view/View;)V

    invoke-virtual {p3, v0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    :goto_45
    iget-object p0, p0, Lcom/android/launcher/togglebar/adapter/AbstractToggleBarAdapter;->mAdditionalAnim:Lcom/android/launcher/togglebar/adapter/AbstractToggleBarAdapter$IAdditionalAnim;

    if-nez p0, :cond_4a

    goto :goto_4e

    :cond_4a
    invoke-interface {p0, v2}, Lcom/android/launcher/togglebar/adapter/AbstractToggleBarAdapter$IAdditionalAnim;->getAdditionalAnim(Z)Landroid/animation/AnimatorSet;

    move-result-object v1

    :goto_4e
    if-nez v1, :cond_51

    return-object p3

    :cond_51
    if-nez p3, :cond_54

    return-object v1

    :cond_54
    new-instance p0, Landroid/animation/AnimatorSet;

    invoke-direct {p0}, Landroid/animation/AnimatorSet;-><init>()V

    invoke-virtual {p0, p3}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    return-object p0
.end method

.method public onAttachedToRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V
    .registers 3

    const-string/jumbo v0, "recyclerView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->onAttachedToRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V

    iput-object p1, p0, Lcom/android/launcher/togglebar/adapter/AbstractToggleBarAdapter;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p0}, Lcom/android/launcher/togglebar/adapter/AbstractToggleBarAdapter;->getSelectedPosition()I

    move-result p1

    if-lez p1, :cond_1d

    iget-object p1, p0, Lcom/android/launcher/togglebar/adapter/AbstractToggleBarAdapter;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    if-nez p1, :cond_16

    goto :goto_1d

    :cond_16
    invoke-virtual {p0}, Lcom/android/launcher/togglebar/adapter/AbstractToggleBarAdapter;->getSelectedPosition()I

    move-result p0

    invoke-virtual {p1, p0}, Landroidx/recyclerview/widget/RecyclerView;->scrollToPosition(I)V

    :cond_1d
    :goto_1d
    return-void
.end method

.method public final setIAdditionAnim(Lcom/android/launcher/togglebar/adapter/AbstractToggleBarAdapter$IAdditionalAnim;)V
    .registers 3

    const-string v0, "additionalAnim"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/launcher/togglebar/adapter/AbstractToggleBarAdapter;->mAdditionalAnim:Lcom/android/launcher/togglebar/adapter/AbstractToggleBarAdapter$IAdditionalAnim;

    return-void
.end method

.method public final setMHaveDoneDestroyAnim(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/launcher/togglebar/adapter/AbstractToggleBarAdapter;->mHaveDoneDestroyAnim:Z

    return-void
.end method

.method public final setMItemClickListener(Lcom/android/launcher/togglebar/adapter/AbstractToggleBarAdapter$OnItemClickListener;)V
    .registers 2

    iput-object p1, p0, Lcom/android/launcher/togglebar/adapter/AbstractToggleBarAdapter;->mItemClickListener:Lcom/android/launcher/togglebar/adapter/AbstractToggleBarAdapter$OnItemClickListener;

    return-void
.end method

.method public final setMRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V
    .registers 2

    iput-object p1, p0, Lcom/android/launcher/togglebar/adapter/AbstractToggleBarAdapter;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    return-void
.end method

.method public final setOnItemClickListener(Lcom/android/launcher/togglebar/adapter/AbstractToggleBarAdapter$OnItemClickListener;)V
    .registers 3

    const-string v0, "listener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/launcher/togglebar/adapter/AbstractToggleBarAdapter;->mItemClickListener:Lcom/android/launcher/togglebar/adapter/AbstractToggleBarAdapter$OnItemClickListener;

    return-void
.end method

.method public updateViewSelectState(IILandroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .registers 4

    if-nez p3, :cond_4

    const/4 p1, 0x0

    goto :goto_6

    :cond_4
    iget-object p1, p3, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    :goto_6
    if-nez p1, :cond_9

    goto :goto_d

    :cond_9
    const/4 p3, 0x1

    invoke-virtual {p1, p3}, Landroid/view/View;->setSelected(Z)V

    :goto_d
    iget-object p1, p0, Lcom/android/launcher/togglebar/adapter/AbstractToggleBarAdapter;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->findViewHolderForLayoutPosition(I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object p1

    if-eqz p1, :cond_1f

    iget-object p0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/view/View;->setSelected(Z)V

    goto :goto_22

    :cond_1f
    invoke-virtual {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    :goto_22
    return-void
.end method
