.class Lcom/coui/appcompat/touchsearchview/COUITouchSearchView$2;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coui/appcompat/touchsearchview/COUITouchSearchView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/coui/appcompat/touchsearchview/COUITouchSearchView;


# direct methods
.method public constructor <init>(Lcom/coui/appcompat/touchsearchview/COUITouchSearchView;)V
    .registers 2

    iput-object p1, p0, Lcom/coui/appcompat/touchsearchview/COUITouchSearchView$2;->this$0:Lcom/coui/appcompat/touchsearchview/COUITouchSearchView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    iget-object v0, p0, Lcom/coui/appcompat/touchsearchview/COUITouchSearchView$2;->this$0:Lcom/coui/appcompat/touchsearchview/COUITouchSearchView;

    invoke-static {v0}, Lcom/coui/appcompat/touchsearchview/COUITouchSearchView;->access$100(Lcom/coui/appcompat/touchsearchview/COUITouchSearchView;)Lm1/d;

    move-result-object v0

    iget-wide v0, v0, Lm1/d;->g:D

    const-wide/16 v2, 0x0

    cmpl-double v0, v0, v2

    if-nez v0, :cond_17

    iget-object p0, p0, Lcom/coui/appcompat/touchsearchview/COUITouchSearchView$2;->this$0:Lcom/coui/appcompat/touchsearchview/COUITouchSearchView;

    invoke-static {p0}, Lcom/coui/appcompat/touchsearchview/COUITouchSearchView;->access$000(Lcom/coui/appcompat/touchsearchview/COUITouchSearchView;)Landroid/widget/PopupWindow;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/PopupWindow;->dismiss()V

    :cond_17
    return-void
.end method
