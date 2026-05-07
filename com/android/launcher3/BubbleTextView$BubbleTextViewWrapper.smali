.class Lcom/android/launcher3/BubbleTextView$BubbleTextViewWrapper;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/launcher3/IBubbleTextViewWrapper;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/BubbleTextView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "BubbleTextViewWrapper"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/launcher3/BubbleTextView;


# direct methods
.method private constructor <init>(Lcom/android/launcher3/BubbleTextView;)V
    .registers 2

    iput-object p1, p0, Lcom/android/launcher3/BubbleTextView$BubbleTextViewWrapper;->this$0:Lcom/android/launcher3/BubbleTextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/launcher3/BubbleTextView;Lcom/android/launcher3/BubbleTextView$1;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/launcher3/BubbleTextView$BubbleTextViewWrapper;-><init>(Lcom/android/launcher3/BubbleTextView;)V

    return-void
.end method


# virtual methods
.method public animateDotScale([F)V
    .registers 2

    iget-object p0, p0, Lcom/android/launcher3/BubbleTextView$BubbleTextViewWrapper;->this$0:Lcom/android/launcher3/BubbleTextView;

    invoke-virtual {p0, p1}, Lcom/android/launcher3/BubbleTextView;->animateDotScale([F)V

    return-void
.end method

.method public applyLabel(Lcom/android/launcher3/model/data/ItemInfoWithIcon;)V
    .registers 2

    iget-object p0, p0, Lcom/android/launcher3/BubbleTextView$BubbleTextViewWrapper;->this$0:Lcom/android/launcher3/BubbleTextView;

    invoke-virtual {p0, p1}, Lcom/android/launcher3/BubbleTextView;->applyLabel(Lcom/android/launcher3/model/data/ItemInfoWithIcon;)V

    return-void
.end method

.method public cancelDotScaleAnim()V
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/BubbleTextView$BubbleTextViewWrapper;->this$0:Lcom/android/launcher3/BubbleTextView;

    invoke-virtual {p0}, Lcom/android/launcher3/BubbleTextView;->cancelDotScaleAnim()V

    return-void
.end method

.method public drawWithoutDot(Landroid/graphics/Canvas;)V
    .registers 2

    iget-object p0, p0, Lcom/android/launcher3/BubbleTextView$BubbleTextViewWrapper;->this$0:Lcom/android/launcher3/BubbleTextView;

    invoke-virtual {p0, p1}, Lcom/android/launcher3/BubbleTextView;->drawWithoutDot(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public getActivity()Lcom/android/launcher3/views/ActivityContext;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/BubbleTextView$BubbleTextViewWrapper;->this$0:Lcom/android/launcher3/BubbleTextView;

    iget-object p0, p0, Lcom/android/launcher3/BubbleTextView;->mActivity:Lcom/android/launcher3/views/ActivityContext;

    return-object p0
.end method

.method public getAppLabelPluralString(Ljava/lang/String;I)Ljava/lang/CharSequence;
    .registers 3

    iget-object p0, p0, Lcom/android/launcher3/BubbleTextView$BubbleTextViewWrapper;->this$0:Lcom/android/launcher3/BubbleTextView;

    invoke-virtual {p0, p1, p2}, Lcom/android/launcher3/BubbleTextView;->getAppLabelPluralString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getIconLoadRequest()Lcom/android/launcher3/icons/cache/HandlerRunnable;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/BubbleTextView$BubbleTextViewWrapper;->this$0:Lcom/android/launcher3/BubbleTextView;

    iget-object p0, p0, Lcom/android/launcher3/BubbleTextView;->mIconLoadRequest:Lcom/android/launcher3/icons/cache/HandlerRunnable;

    return-object p0
.end method

.method public getIconSize()I
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/BubbleTextView$BubbleTextViewWrapper;->this$0:Lcom/android/launcher3/BubbleTextView;

    iget p0, p0, Lcom/android/launcher3/BubbleTextView;->mIconSize:I

    return p0
.end method

.method public getIsIconVisible()Z
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/BubbleTextView$BubbleTextViewWrapper;->this$0:Lcom/android/launcher3/BubbleTextView;

    iget-boolean p0, p0, Lcom/android/launcher3/BubbleTextView;->mIsIconVisible:Z

    return p0
.end method

.method public isLayoutHorizontal()Z
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/BubbleTextView$BubbleTextViewWrapper;->this$0:Lcom/android/launcher3/BubbleTextView;

    iget-boolean p0, p0, Lcom/android/launcher3/BubbleTextView;->mLayoutHorizontal:Z

    return p0
.end method

.method public setIcon(Lcom/android/launcher3/icons/FastBitmapDrawable;)V
    .registers 2

    iget-object p0, p0, Lcom/android/launcher3/BubbleTextView$BubbleTextViewWrapper;->this$0:Lcom/android/launcher3/BubbleTextView;

    invoke-virtual {p0, p1}, Lcom/android/launcher3/BubbleTextView;->setIcon(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setIconLoadRequest(Lcom/android/launcher3/icons/cache/HandlerRunnable;)V
    .registers 2

    iget-object p0, p0, Lcom/android/launcher3/BubbleTextView$BubbleTextViewWrapper;->this$0:Lcom/android/launcher3/BubbleTextView;

    iput-object p1, p0, Lcom/android/launcher3/BubbleTextView;->mIconLoadRequest:Lcom/android/launcher3/icons/cache/HandlerRunnable;

    return-void
.end method
