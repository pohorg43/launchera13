.class public final Lcom/android/launcher3/card/utils/CardLoadChecker$iUsCardLoadResult$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/launcher3/card/utils/IUSCardLoadResult;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/card/utils/CardLoadChecker;-><init>(Lcom/android/launcher3/card/uscard/USCardContainerView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/launcher3/card/utils/CardLoadChecker;


# direct methods
.method public constructor <init>(Lcom/android/launcher3/card/utils/CardLoadChecker;)V
    .registers 2

    iput-object p1, p0, Lcom/android/launcher3/card/utils/CardLoadChecker$iUsCardLoadResult$1;->this$0:Lcom/android/launcher3/card/utils/CardLoadChecker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSuccess(Lcom/android/launcher3/card/uscard/USCardView;)V
    .registers 4

    const-string/jumbo v0, "usCardView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/launcher3/card/utils/CardLoadChecker$iUsCardLoadResult$1;->this$0:Lcom/android/launcher3/card/utils/CardLoadChecker;

    invoke-static {v0}, Lcom/android/launcher3/card/utils/CardLoadChecker;->access$getLoadState$p(Lcom/android/launcher3/card/utils/CardLoadChecker;)I

    move-result v0

    const/4 v1, 0x4

    if-eq v1, v0, :cond_10

    return-void

    :cond_10
    iget-object v0, p0, Lcom/android/launcher3/card/utils/CardLoadChecker$iUsCardLoadResult$1;->this$0:Lcom/android/launcher3/card/utils/CardLoadChecker;

    invoke-static {v0}, Lcom/android/launcher3/card/utils/CardLoadChecker;->access$getLoadCompleteCards$p(Lcom/android/launcher3/card/utils/CardLoadChecker;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7a

    iget-object v0, p0, Lcom/android/launcher3/card/utils/CardLoadChecker$iUsCardLoadResult$1;->this$0:Lcom/android/launcher3/card/utils/CardLoadChecker;

    invoke-static {v0}, Lcom/android/launcher3/card/utils/CardLoadChecker;->access$getPreloadCards$p(Lcom/android/launcher3/card/utils/CardLoadChecker;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7a

    iget-object v0, p0, Lcom/android/launcher3/card/utils/CardLoadChecker$iUsCardLoadResult$1;->this$0:Lcom/android/launcher3/card/utils/CardLoadChecker;

    invoke-static {v0}, Lcom/android/launcher3/card/utils/CardLoadChecker;->access$getLoadCompleteCards$p(Lcom/android/launcher3/card/utils/CardLoadChecker;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v0

    if-eqz v0, :cond_5f

    const-string v0, "USCard load Successful: "

    invoke-static {v0}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/launcher3/card/CommonCardView;->logCardInfo()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " loadSuccessfulCount = "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/android/launcher3/card/utils/CardLoadChecker$iUsCardLoadResult$1;->this$0:Lcom/android/launcher3/card/utils/CardLoadChecker;

    invoke-static {p1}, Lcom/android/launcher3/card/utils/CardLoadChecker;->access$getLoadCompleteCards$p(Lcom/android/launcher3/card/utils/CardLoadChecker;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "CardLoadChecker"

    invoke-static {v0, p1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5f
    iget-object p1, p0, Lcom/android/launcher3/card/utils/CardLoadChecker$iUsCardLoadResult$1;->this$0:Lcom/android/launcher3/card/utils/CardLoadChecker;

    invoke-static {p1}, Lcom/android/launcher3/card/utils/CardLoadChecker;->access$getPreloadCards$p(Lcom/android/launcher3/card/utils/CardLoadChecker;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    iget-object v0, p0, Lcom/android/launcher3/card/utils/CardLoadChecker$iUsCardLoadResult$1;->this$0:Lcom/android/launcher3/card/utils/CardLoadChecker;

    invoke-static {v0}, Lcom/android/launcher3/card/utils/CardLoadChecker;->access$getLoadCompleteCards$p(Lcom/android/launcher3/card/utils/CardLoadChecker;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ne p1, v0, :cond_7a

    iget-object p0, p0, Lcom/android/launcher3/card/utils/CardLoadChecker$iUsCardLoadResult$1;->this$0:Lcom/android/launcher3/card/utils/CardLoadChecker;

    invoke-static {p0}, Lcom/android/launcher3/card/utils/CardLoadChecker;->access$loadComplete(Lcom/android/launcher3/card/utils/CardLoadChecker;)V

    :cond_7a
    return-void
.end method
