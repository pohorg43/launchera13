.class final Lcom/android/launcher3/card/uscard/USCardContainerView$preformCardsRefresh$2;
.super Lkotlin/jvm/internal/Lambda;
.source ""

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/card/uscard/USCardContainerView;->preformCardsRefresh(Lcom/android/launcher3/card/seed/SeedContentResult;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Ljava/lang/Throwable;",
        "Ly2/p;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic $contentResult:Lcom/android/launcher3/card/seed/SeedContentResult;

.field public final synthetic this$0:Lcom/android/launcher3/card/uscard/USCardContainerView;


# direct methods
.method public constructor <init>(Lcom/android/launcher3/card/uscard/USCardContainerView;Lcom/android/launcher3/card/seed/SeedContentResult;)V
    .registers 3

    iput-object p1, p0, Lcom/android/launcher3/card/uscard/USCardContainerView$preformCardsRefresh$2;->this$0:Lcom/android/launcher3/card/uscard/USCardContainerView;

    iput-object p2, p0, Lcom/android/launcher3/card/uscard/USCardContainerView$preformCardsRefresh$2;->$contentResult:Lcom/android/launcher3/card/seed/SeedContentResult;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {p0, p1}, Lcom/android/launcher3/card/uscard/USCardContainerView$preformCardsRefresh$2;->invoke(Ljava/lang/Throwable;)V

    sget-object p0, Ly2/p;->a:Ly2/p;

    return-object p0
.end method

.method public final invoke(Ljava/lang/Throwable;)V
    .registers 4

    iget-object p1, p0, Lcom/android/launcher3/card/uscard/USCardContainerView$preformCardsRefresh$2;->this$0:Lcom/android/launcher3/card/uscard/USCardContainerView;

    invoke-static {p1}, Lcom/android/launcher3/card/uscard/USCardContainerView;->access$getMStoreContentResultForRefresh$p(Lcom/android/launcher3/card/uscard/USCardContainerView;)Lcom/android/launcher3/card/seed/SeedContentResult;

    move-result-object p1

    const-string v0, "LauncherCardView-USCardContainerView"

    if-nez p1, :cond_2c

    iget-object p1, p0, Lcom/android/launcher3/card/uscard/USCardContainerView$preformCardsRefresh$2;->$contentResult:Lcom/android/launcher3/card/seed/SeedContentResult;

    invoke-virtual {p1}, Lcom/android/launcher3/card/seed/SeedContentResult;->getNeedDoGuarantee()Z

    move-result p1

    if-eqz p1, :cond_2b

    iget-object p1, p0, Lcom/android/launcher3/card/uscard/USCardContainerView$preformCardsRefresh$2;->$contentResult:Lcom/android/launcher3/card/seed/SeedContentResult;

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Lcom/android/launcher3/card/seed/SeedContentResult;->setNeedDoGuarantee(Z)V

    iget-object p1, p0, Lcom/android/launcher3/card/uscard/USCardContainerView$preformCardsRefresh$2;->$contentResult:Lcom/android/launcher3/card/seed/SeedContentResult;

    const-string/jumbo v1, "preformCardsRefresh: needDoGuarantee contentResult = "

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/android/launcher3/card/uscard/USCardContainerView$preformCardsRefresh$2;->this$0:Lcom/android/launcher3/card/uscard/USCardContainerView;

    iget-object p0, p0, Lcom/android/launcher3/card/uscard/USCardContainerView$preformCardsRefresh$2;->$contentResult:Lcom/android/launcher3/card/seed/SeedContentResult;

    invoke-virtual {p1, p0}, Lcom/android/launcher3/card/uscard/USCardContainerView;->preformCardsRefresh(Lcom/android/launcher3/card/seed/SeedContentResult;)V

    :cond_2b
    return-void

    :cond_2c
    iget-object p0, p0, Lcom/android/launcher3/card/uscard/USCardContainerView$preformCardsRefresh$2;->this$0:Lcom/android/launcher3/card/uscard/USCardContainerView;

    const/4 v1, 0x0

    invoke-static {p0, v1}, Lcom/android/launcher3/card/uscard/USCardContainerView;->access$setMStoreContentResultForRefresh$p(Lcom/android/launcher3/card/uscard/USCardContainerView;Lcom/android/launcher3/card/seed/SeedContentResult;)V

    const-string/jumbo v1, "playCardsRefreshAnim, mStoreContentResultForRefreshLock is "

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/android/launcher3/card/uscard/USCardContainerView;->preformCardsRefresh(Lcom/android/launcher3/card/seed/SeedContentResult;)V

    return-void
.end method
