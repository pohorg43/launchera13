.class Lcom/coui/appcompat/edittext/COUICodeInputView$UpdateItemWidthRunnable;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coui/appcompat/edittext/COUICodeInputView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "UpdateItemWidthRunnable"
.end annotation


# instance fields
.field public a:Landroid/view/View;


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/coui/appcompat/edittext/COUICodeInputView$1;)V
    .registers 2

    invoke-direct {p0}, Lcom/coui/appcompat/edittext/COUICodeInputView$UpdateItemWidthRunnable;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    iget-object v0, p0, Lcom/coui/appcompat/edittext/COUICodeInputView$UpdateItemWidthRunnable;->a:Landroid/view/View;

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/coui/appcompat/edittext/COUICodeInputView$UpdateItemWidthRunnable;->a:Landroid/view/View;

    :cond_a
    return-void
.end method
