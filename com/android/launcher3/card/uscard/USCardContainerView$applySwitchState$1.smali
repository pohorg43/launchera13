.class final Lcom/android/launcher3/card/uscard/USCardContainerView$applySwitchState$1;
.super Ld3/i;
.source ""

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation runtime Ld3/e;
    c = "com.android.launcher3.card.uscard.USCardContainerView$applySwitchState$1"
    f = "USCardContainerView.kt"
    l = {
        0x649
    }
    m = "invokeSuspend"
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/card/uscard/USCardContainerView;->applySwitchState(ZIZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ld3/i;",
        "Lkotlin/jvm/functions/Function2<",
        "Lq3/f0;",
        "Lb3/d<",
        "-",
        "Ly2/p;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic $isFadeIn:Z

.field public label:I

.field public final synthetic this$0:Lcom/android/launcher3/card/uscard/USCardContainerView;


# direct methods
.method public constructor <init>(Lcom/android/launcher3/card/uscard/USCardContainerView;ZLb3/d;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/launcher3/card/uscard/USCardContainerView;",
            "Z",
            "Lb3/d<",
            "-",
            "Lcom/android/launcher3/card/uscard/USCardContainerView$applySwitchState$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/launcher3/card/uscard/USCardContainerView$applySwitchState$1;->this$0:Lcom/android/launcher3/card/uscard/USCardContainerView;

    iput-boolean p2, p0, Lcom/android/launcher3/card/uscard/USCardContainerView$applySwitchState$1;->$isFadeIn:Z

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Ld3/i;-><init>(ILb3/d;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lb3/d;)Lb3/d;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lb3/d<",
            "*>;)",
            "Lb3/d<",
            "Ly2/p;",
            ">;"
        }
    .end annotation

    new-instance p1, Lcom/android/launcher3/card/uscard/USCardContainerView$applySwitchState$1;

    iget-object v0, p0, Lcom/android/launcher3/card/uscard/USCardContainerView$applySwitchState$1;->this$0:Lcom/android/launcher3/card/uscard/USCardContainerView;

    iget-boolean p0, p0, Lcom/android/launcher3/card/uscard/USCardContainerView$applySwitchState$1;->$isFadeIn:Z

    invoke-direct {p1, v0, p0, p2}, Lcom/android/launcher3/card/uscard/USCardContainerView$applySwitchState$1;-><init>(Lcom/android/launcher3/card/uscard/USCardContainerView;ZLb3/d;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    check-cast p1, Lq3/f0;

    check-cast p2, Lb3/d;

    invoke-virtual {p0, p1, p2}, Lcom/android/launcher3/card/uscard/USCardContainerView$applySwitchState$1;->invoke(Lq3/f0;Lb3/d;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invoke(Lq3/f0;Lb3/d;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lq3/f0;",
            "Lb3/d<",
            "-",
            "Ly2/p;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/android/launcher3/card/uscard/USCardContainerView$applySwitchState$1;->create(Ljava/lang/Object;Lb3/d;)Lb3/d;

    move-result-object p0

    check-cast p0, Lcom/android/launcher3/card/uscard/USCardContainerView$applySwitchState$1;

    sget-object p1, Ly2/p;->a:Ly2/p;

    invoke-virtual {p0, p1}, Lcom/android/launcher3/card/uscard/USCardContainerView$applySwitchState$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 7

    sget-object v0, Lc3/a;->a:Lc3/a;

    iget v1, p0, Lcom/android/launcher3/card/uscard/USCardContainerView$applySwitchState$1;->label:I

    const/4 v2, 0x1

    if-eqz v1, :cond_15

    if-ne v1, v2, :cond_d

    invoke-static {p1}, Lq/d;->p(Ljava/lang/Object;)V

    goto :goto_42

    :cond_d
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_15
    invoke-static {p1}, Lq/d;->p(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/android/launcher3/card/uscard/USCardContainerView$applySwitchState$1;->this$0:Lcom/android/launcher3/card/uscard/USCardContainerView;

    invoke-static {p1}, Lcom/android/launcher3/card/uscard/USCardContainerView;->access$getMLauncher$p$s2093876888(Lcom/android/launcher3/card/uscard/USCardContainerView;)Lcom/android/launcher/Launcher;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/OplusWorkspace;

    move-result-object p1

    sget-object v1, Lcom/android/launcher3/card/seed/SeedCardClient;->INSTANCE:Lcom/android/launcher3/card/seed/SeedCardClient;

    invoke-virtual {p1}, Lcom/android/launcher3/PagedView;->getCurrentPage()I

    move-result v3

    invoke-virtual {p1, v3}, Lcom/android/launcher3/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object p1

    instance-of v3, p1, Lcom/android/launcher3/CellLayout;

    if-eqz v3, :cond_33

    check-cast p1, Lcom/android/launcher3/CellLayout;

    goto :goto_34

    :cond_33
    const/4 p1, 0x0

    :goto_34
    invoke-virtual {v1, p1}, Lcom/android/launcher3/card/seed/SeedCardClient;->useRecommendList(Lcom/android/launcher3/CellLayout;)V

    const-wide/16 v3, 0x64

    iput v2, p0, Lcom/android/launcher3/card/uscard/USCardContainerView$applySwitchState$1;->label:I

    invoke-static {v3, v4, p0}, Lp/d;->a(JLb3/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_42

    return-object v0

    :cond_42
    :goto_42
    iget-object p1, p0, Lcom/android/launcher3/card/uscard/USCardContainerView$applySwitchState$1;->this$0:Lcom/android/launcher3/card/uscard/USCardContainerView;

    iget-boolean p0, p0, Lcom/android/launcher3/card/uscard/USCardContainerView$applySwitchState$1;->$isFadeIn:Z

    invoke-virtual {p1, p0}, Lcom/android/launcher3/card/uscard/USCardContainerView;->animBg(Z)V

    sget-object p0, Ly2/p;->a:Ly2/p;

    return-object p0
.end method
