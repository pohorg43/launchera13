.class final Lcom/android/launcher3/card/utils/CardLoadChecker$loadTimeout$5;
.super Ld3/i;
.source ""

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation runtime Ld3/e;
    c = "com.android.launcher3.card.utils.CardLoadChecker$loadTimeout$5"
    f = "CardLoadChecker.kt"
    l = {}
    m = "invokeSuspend"
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/card/utils/CardLoadChecker;->loadTimeout(Lcom/android/launcher3/card/seed/SeedContentResult;Lb3/d;)Ljava/lang/Object;
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
.field public final synthetic $contentResult:Lcom/android/launcher3/card/seed/SeedContentResult;

.field public final synthetic $playAnim:Lkotlin/jvm/internal/Ref$BooleanRef;

.field public label:I

.field public final synthetic this$0:Lcom/android/launcher3/card/utils/CardLoadChecker;


# direct methods
.method public constructor <init>(Lcom/android/launcher3/card/utils/CardLoadChecker;Lcom/android/launcher3/card/seed/SeedContentResult;Lkotlin/jvm/internal/Ref$BooleanRef;Lb3/d;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/launcher3/card/utils/CardLoadChecker;",
            "Lcom/android/launcher3/card/seed/SeedContentResult;",
            "Lkotlin/jvm/internal/Ref$BooleanRef;",
            "Lb3/d<",
            "-",
            "Lcom/android/launcher3/card/utils/CardLoadChecker$loadTimeout$5;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/launcher3/card/utils/CardLoadChecker$loadTimeout$5;->this$0:Lcom/android/launcher3/card/utils/CardLoadChecker;

    iput-object p2, p0, Lcom/android/launcher3/card/utils/CardLoadChecker$loadTimeout$5;->$contentResult:Lcom/android/launcher3/card/seed/SeedContentResult;

    iput-object p3, p0, Lcom/android/launcher3/card/utils/CardLoadChecker$loadTimeout$5;->$playAnim:Lkotlin/jvm/internal/Ref$BooleanRef;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p4}, Ld3/i;-><init>(ILb3/d;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lb3/d;)Lb3/d;
    .registers 5
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

    new-instance p1, Lcom/android/launcher3/card/utils/CardLoadChecker$loadTimeout$5;

    iget-object v0, p0, Lcom/android/launcher3/card/utils/CardLoadChecker$loadTimeout$5;->this$0:Lcom/android/launcher3/card/utils/CardLoadChecker;

    iget-object v1, p0, Lcom/android/launcher3/card/utils/CardLoadChecker$loadTimeout$5;->$contentResult:Lcom/android/launcher3/card/seed/SeedContentResult;

    iget-object p0, p0, Lcom/android/launcher3/card/utils/CardLoadChecker$loadTimeout$5;->$playAnim:Lkotlin/jvm/internal/Ref$BooleanRef;

    invoke-direct {p1, v0, v1, p0, p2}, Lcom/android/launcher3/card/utils/CardLoadChecker$loadTimeout$5;-><init>(Lcom/android/launcher3/card/utils/CardLoadChecker;Lcom/android/launcher3/card/seed/SeedContentResult;Lkotlin/jvm/internal/Ref$BooleanRef;Lb3/d;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    check-cast p1, Lq3/f0;

    check-cast p2, Lb3/d;

    invoke-virtual {p0, p1, p2}, Lcom/android/launcher3/card/utils/CardLoadChecker$loadTimeout$5;->invoke(Lq3/f0;Lb3/d;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcom/android/launcher3/card/utils/CardLoadChecker$loadTimeout$5;->create(Ljava/lang/Object;Lb3/d;)Lb3/d;

    move-result-object p0

    check-cast p0, Lcom/android/launcher3/card/utils/CardLoadChecker$loadTimeout$5;

    sget-object p1, Ly2/p;->a:Ly2/p;

    invoke-virtual {p0, p1}, Lcom/android/launcher3/card/utils/CardLoadChecker$loadTimeout$5;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 7

    iget v0, p0, Lcom/android/launcher3/card/utils/CardLoadChecker$loadTimeout$5;->label:I

    if-nez v0, :cond_83

    invoke-static {p1}, Lq/d;->p(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/android/launcher3/card/utils/CardLoadChecker$loadTimeout$5;->this$0:Lcom/android/launcher3/card/utils/CardLoadChecker;

    invoke-static {p1}, Lcom/android/launcher3/card/utils/CardLoadChecker;->access$removeAllLoadingCards(Lcom/android/launcher3/card/utils/CardLoadChecker;)V

    iget-object p1, p0, Lcom/android/launcher3/card/utils/CardLoadChecker$loadTimeout$5;->this$0:Lcom/android/launcher3/card/utils/CardLoadChecker;

    invoke-static {p1}, Lcom/android/launcher3/card/utils/CardLoadChecker;->access$getUsCardContainer$p(Lcom/android/launcher3/card/utils/CardLoadChecker;)Lcom/android/launcher3/card/uscard/USCardContainerView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/launcher3/card/uscard/USCardContainerView;->revertPendingList()V

    iget-object p1, p0, Lcom/android/launcher3/card/utils/CardLoadChecker$loadTimeout$5;->this$0:Lcom/android/launcher3/card/utils/CardLoadChecker;

    invoke-static {p1}, Lcom/android/launcher3/card/utils/CardLoadChecker;->access$getUsCardContainer$p(Lcom/android/launcher3/card/utils/CardLoadChecker;)Lcom/android/launcher3/card/uscard/USCardContainerView;

    move-result-object p1

    invoke-static {p1}, Landroidx/core/view/ViewGroupKt;->getChildren(Landroid/view/ViewGroup;)Lo3/e;

    move-result-object p1

    invoke-interface {p1}, Lo3/e;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_23
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_46

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result v3

    const v4, 0x7f0a011b

    if-eq v3, v4, :cond_41

    instance-of v0, v0, Lcom/android/launcher3/card/DefaultCardView;

    if-eqz v0, :cond_3f

    goto :goto_41

    :cond_3f
    move v0, v1

    goto :goto_42

    :cond_41
    :goto_41
    move v0, v2

    :goto_42
    if-eqz v0, :cond_23

    move p1, v2

    goto :goto_47

    :cond_46
    move p1, v1

    :goto_47
    if-eqz p1, :cond_56

    iget-object p1, p0, Lcom/android/launcher3/card/utils/CardLoadChecker$loadTimeout$5;->this$0:Lcom/android/launcher3/card/utils/CardLoadChecker;

    invoke-static {p1}, Lcom/android/launcher3/card/utils/CardLoadChecker;->access$getUsCardContainer$p(Lcom/android/launcher3/card/utils/CardLoadChecker;)Lcom/android/launcher3/card/uscard/USCardContainerView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result p1

    if-lez p1, :cond_56

    move v1, v2

    :cond_56
    if-eqz v1, :cond_80

    iget-object p1, p0, Lcom/android/launcher3/card/utils/CardLoadChecker$loadTimeout$5;->$contentResult:Lcom/android/launcher3/card/seed/SeedContentResult;

    invoke-virtual {p1}, Lcom/android/launcher3/card/seed/SeedContentResult;->getNeedDoGuarantee()Z

    move-result p1

    if-nez p1, :cond_80

    invoke-static {}, Lcom/android/launcher3/card/CardPermissionManager;->getInstance()Lcom/android/launcher3/card/CardPermissionManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/launcher3/card/CardPermissionManager;->getUSRelatedPermissionManager()Lcom/android/launcher3/card/uscard/USRelatedPermissionManager;

    move-result-object p1

    if-nez p1, :cond_6b

    goto :goto_80

    :cond_6b
    iget-object v0, p0, Lcom/android/launcher3/card/utils/CardLoadChecker$loadTimeout$5;->this$0:Lcom/android/launcher3/card/utils/CardLoadChecker;

    iget-object p0, p0, Lcom/android/launcher3/card/utils/CardLoadChecker$loadTimeout$5;->$playAnim:Lkotlin/jvm/internal/Ref$BooleanRef;

    invoke-static {v0}, Lcom/android/launcher3/card/utils/CardLoadChecker;->access$getUsCardContainer$p(Lcom/android/launcher3/card/utils/CardLoadChecker;)Lcom/android/launcher3/card/uscard/USCardContainerView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/card/uscard/USCardContainerView;->saveOldCardsToPendingList()V

    invoke-static {v0}, Lcom/android/launcher3/card/utils/CardLoadChecker;->access$getUsCardContainer$p(Lcom/android/launcher3/card/utils/CardLoadChecker;)Lcom/android/launcher3/card/uscard/USCardContainerView;

    move-result-object v0

    const/4 v1, -0x5

    invoke-virtual {v0, v1, p1}, Lcom/android/launcher3/card/uscard/USCardContainerView;->inflateAndAddXiaoBuAdviceView(ILcom/android/launcher3/card/uscard/USRelatedPermissionManager;)V

    iput-boolean v2, p0, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    :cond_80
    :goto_80
    sget-object p0, Ly2/p;->a:Ly2/p;

    return-object p0

    :cond_83
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
