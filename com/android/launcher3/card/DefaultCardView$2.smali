.class Lcom/android/launcher3/card/DefaultCardView$2;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/card/DefaultCardView;->initial(Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/launcher3/card/DefaultCardView;

.field public final synthetic val$layoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# direct methods
.method public constructor <init>(Lcom/android/launcher3/card/DefaultCardView;Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V
    .registers 3

    iput-object p1, p0, Lcom/android/launcher3/card/DefaultCardView$2;->this$0:Lcom/android/launcher3/card/DefaultCardView;

    iput-object p2, p0, Lcom/android/launcher3/card/DefaultCardView$2;->val$layoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    iget-object v0, p0, Lcom/android/launcher3/card/DefaultCardView$2;->this$0:Lcom/android/launcher3/card/DefaultCardView;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    if-eqz v0, :cond_d

    iget-object v1, p0, Lcom/android/launcher3/card/DefaultCardView$2;->val$layoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    :cond_d
    iget-object p0, p0, Lcom/android/launcher3/card/DefaultCardView$2;->this$0:Lcom/android/launcher3/card/DefaultCardView;

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/android/launcher3/card/DefaultCardView;->access$502(Lcom/android/launcher3/card/DefaultCardView;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    return-void
.end method
