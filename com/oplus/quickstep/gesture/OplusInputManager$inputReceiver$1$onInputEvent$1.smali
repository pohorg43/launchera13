.class final Lcom/oplus/quickstep/gesture/OplusInputManager$inputReceiver$1$onInputEvent$1;
.super Lkotlin/jvm/internal/Lambda;
.source ""

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/quickstep/gesture/OplusInputManager$inputReceiver$1;->onInputEvent(Landroid/view/InputEvent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Ljava/lang/Boolean;",
        "Ly2/p;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/oplus/quickstep/gesture/OplusInputManager;


# direct methods
.method public constructor <init>(Lcom/oplus/quickstep/gesture/OplusInputManager;)V
    .registers 2

    iput-object p1, p0, Lcom/oplus/quickstep/gesture/OplusInputManager$inputReceiver$1$onInputEvent$1;->this$0:Lcom/oplus/quickstep/gesture/OplusInputManager;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/oplus/quickstep/gesture/OplusInputManager$inputReceiver$1$onInputEvent$1;->invoke(Z)V

    sget-object p0, Ly2/p;->a:Ly2/p;

    return-object p0
.end method

.method public final invoke(Z)V
    .registers 2

    iget-object p0, p0, Lcom/oplus/quickstep/gesture/OplusInputManager$inputReceiver$1$onInputEvent$1;->this$0:Lcom/oplus/quickstep/gesture/OplusInputManager;

    invoke-static {p0, p1}, Lcom/oplus/quickstep/gesture/OplusInputManager;->access$setValidTouchEvent$p(Lcom/oplus/quickstep/gesture/OplusInputManager;Z)V

    return-void
.end method
