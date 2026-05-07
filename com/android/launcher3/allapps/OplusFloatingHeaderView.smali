.class public Lcom/android/launcher3/allapps/OplusFloatingHeaderView;
.super Lcom/android/launcher3/allapps/FloatingHeaderView;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/allapps/OplusFloatingHeaderView$GlobalLayoutAndMaxTranslationChange;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "OplusFloatingHeaderView"


# instance fields
.field private mMaxTranslationChangeListener:Lcom/android/launcher3/allapps/OplusFloatingHeaderView$GlobalLayoutAndMaxTranslationChange;

.field private mViewTreeListenerForHeightChange:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

.field private mViewTreeObserverForHeightChange:Landroid/view/ViewTreeObserver;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2
    .param p1  # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0, p1}, Lcom/android/launcher3/allapps/FloatingHeaderView;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 5
    .param p1  # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2  # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0, p1, p2}, Lcom/android/launcher3/allapps/FloatingHeaderView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f07010a

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/android/launcher3/allapps/FloatingHeaderView;->mHeaderTopPadding:I

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getPaddingLeft()I

    move-result p1

    iget p2, p0, Lcom/android/launcher3/allapps/FloatingHeaderView;->mHeaderTopPadding:I

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getPaddingRight()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getPaddingBottom()I

    move-result v1

    invoke-virtual {p0, p1, p2, v0, v1}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    invoke-direct {p0}, Lcom/android/launcher3/allapps/OplusFloatingHeaderView;->addOnGlobalLayoutListenerForHeightChange()V

    return-void
.end method

.method public static synthetic access$000(Lcom/android/launcher3/allapps/OplusFloatingHeaderView;)Lcom/android/launcher3/allapps/OplusFloatingHeaderView$GlobalLayoutAndMaxTranslationChange;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/allapps/OplusFloatingHeaderView;->mMaxTranslationChangeListener:Lcom/android/launcher3/allapps/OplusFloatingHeaderView$GlobalLayoutAndMaxTranslationChange;

    return-object p0
.end method

.method private addOnGlobalLayoutListenerForHeightChange()V
    .registers 3

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/allapps/OplusFloatingHeaderView;->mViewTreeObserverForHeightChange:Landroid/view/ViewTreeObserver;

    const-string v1, "OplusFloatingHeaderView"

    if-nez v0, :cond_10

    const-string p0, "addOnGlobalLayoutListenerForHeightChange failed get"

    invoke-static {v1, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_10
    new-instance v0, Lcom/android/launcher3/allapps/OplusFloatingHeaderView$1;

    invoke-direct {v0, p0}, Lcom/android/launcher3/allapps/OplusFloatingHeaderView$1;-><init>(Lcom/android/launcher3/allapps/OplusFloatingHeaderView;)V

    iput-object v0, p0, Lcom/android/launcher3/allapps/OplusFloatingHeaderView;->mViewTreeListenerForHeightChange:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    iget-object p0, p0, Lcom/android/launcher3/allapps/OplusFloatingHeaderView;->mViewTreeObserverForHeightChange:Landroid/view/ViewTreeObserver;

    invoke-virtual {p0, v0}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    const-string p0, "addOnGlobalLayoutListenerForHeightChange "

    invoke-static {v1, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private removeOnGlobalLayoutListenerForHeightChange()V
    .registers 3

    const-string/jumbo v0, "removeOnGlobalLayoutListenerForHeightChange mViewTreeObserverForHeightChange = "

    invoke-static {v0}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/allapps/OplusFloatingHeaderView;->mViewTreeObserverForHeightChange:Landroid/view/ViewTreeObserver;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OplusFloatingHeaderView"

    invoke-static {v1, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/launcher3/allapps/OplusFloatingHeaderView;->mViewTreeObserverForHeightChange:Landroid/view/ViewTreeObserver;

    if-eqz v0, :cond_2c

    invoke-virtual {v0}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_2c

    const-string/jumbo v0, "removeOnGlobalLayoutListenerForHeightChange done"

    invoke-static {v1, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/launcher3/allapps/OplusFloatingHeaderView;->mViewTreeObserverForHeightChange:Landroid/view/ViewTreeObserver;

    iget-object p0, p0, Lcom/android/launcher3/allapps/OplusFloatingHeaderView;->mViewTreeListenerForHeightChange:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    :cond_2c
    return-void
.end method


# virtual methods
.method public setMaxTranslationChangeListener(Lcom/android/launcher3/allapps/OplusFloatingHeaderView$GlobalLayoutAndMaxTranslationChange;)V
    .registers 2

    iput-object p1, p0, Lcom/android/launcher3/allapps/OplusFloatingHeaderView;->mMaxTranslationChangeListener:Lcom/android/launcher3/allapps/OplusFloatingHeaderView$GlobalLayoutAndMaxTranslationChange;

    return-void
.end method
