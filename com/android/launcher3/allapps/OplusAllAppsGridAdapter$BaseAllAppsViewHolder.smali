.class public Lcom/android/launcher3/allapps/OplusAllAppsGridAdapter$BaseAllAppsViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/allapps/OplusAllAppsGridAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BaseAllAppsViewHolder"
.end annotation


# static fields
.field public static final ALPHA_OUT:F = 0.1f

.field private static final DURATION:I = 0x1a1

.field private static final INTERPOLATOR:Landroid/view/animation/PathInterpolator;


# instance fields
.field private mAlphaInAnim:Landroid/animation/Animator;

.field private mAlphaOutAnim:Landroid/animation/Animator;


# direct methods
.method public static constructor <clinit>()V
    .registers 5

    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v1, 0x3ea8f5c3  # 0.33f

    const/4 v2, 0x0

    const v3, 0x3f2b851f  # 0.67f

    const/high16 v4, 0x3f800000  # 1.0f

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lcom/android/launcher3/allapps/OplusAllAppsGridAdapter$BaseAllAppsViewHolder;->INTERPOLATOR:Landroid/view/animation/PathInterpolator;

    return-void
.end method

.method public constructor <init>(Landroid/view/View;)V
    .registers 2

    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public createAnimation()V
    .registers 7

    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const/4 v1, 0x2

    new-array v2, v1, [F

    fill-array-data v2, :array_32

    const-string v3, "alpha"

    invoke-static {v0, v3, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/allapps/OplusAllAppsGridAdapter$BaseAllAppsViewHolder;->mAlphaOutAnim:Landroid/animation/Animator;

    sget-object v2, Lcom/android/launcher3/allapps/OplusAllAppsGridAdapter$BaseAllAppsViewHolder;->INTERPOLATOR:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v0, v2}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v0, p0, Lcom/android/launcher3/allapps/OplusAllAppsGridAdapter$BaseAllAppsViewHolder;->mAlphaOutAnim:Landroid/animation/Animator;

    const-wide/16 v4, 0x1a1

    invoke-virtual {v0, v4, v5}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    new-array v1, v1, [F

    fill-array-data v1, :array_3a

    invoke-static {v0, v3, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/allapps/OplusAllAppsGridAdapter$BaseAllAppsViewHolder;->mAlphaInAnim:Landroid/animation/Animator;

    invoke-virtual {v0, v2}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object p0, p0, Lcom/android/launcher3/allapps/OplusAllAppsGridAdapter$BaseAllAppsViewHolder;->mAlphaInAnim:Landroid/animation/Animator;

    invoke-virtual {p0, v4, v5}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    return-void

    :array_32
    .array-data 4
        0x3f800000  # 1.0f
        0x3dcccccd  # 0.1f
    .end array-data

    :array_3a
    .array-data 4
        0x3dcccccd  # 0.1f
        0x3f800000  # 1.0f
    .end array-data
.end method

.method public getAlphaInAnim()Landroid/animation/Animator;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/allapps/OplusAllAppsGridAdapter$BaseAllAppsViewHolder;->mAlphaInAnim:Landroid/animation/Animator;

    return-object p0
.end method

.method public getAlphaOutAnim()Landroid/animation/Animator;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/allapps/OplusAllAppsGridAdapter$BaseAllAppsViewHolder;->mAlphaOutAnim:Landroid/animation/Animator;

    return-object p0
.end method
