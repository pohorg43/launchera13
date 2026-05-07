.class final Lcom/android/wm/shell/bubbles/DismissView$animateHide$1;
.super Lkotlin/jvm/internal/Lambda;
.source ""

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/wm/shell/bubbles/DismissView;->animateHide()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Ly2/p;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/wm/shell/bubbles/DismissView;


# direct methods
.method public constructor <init>(Lcom/android/wm/shell/bubbles/DismissView;)V
    .registers 2

    iput-object p1, p0, Lcom/android/wm/shell/bubbles/DismissView$animateHide$1;->this$0:Lcom/android/wm/shell/bubbles/DismissView;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .registers 1

    invoke-virtual {p0}, Lcom/android/wm/shell/bubbles/DismissView$animateHide$1;->invoke()V

    sget-object p0, Ly2/p;->a:Ly2/p;

    return-object p0
.end method

.method public final invoke()V
    .registers 2

    iget-object p0, p0, Lcom/android/wm/shell/bubbles/DismissView$animateHide$1;->this$0:Lcom/android/wm/shell/bubbles/DismissView;

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    return-void
.end method
