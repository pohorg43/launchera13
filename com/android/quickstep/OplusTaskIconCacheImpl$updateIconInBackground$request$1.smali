.class public final Lcom/android/quickstep/OplusTaskIconCacheImpl$updateIconInBackground$request$1;
.super Lcom/android/quickstep/util/CancellableTask;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/quickstep/OplusTaskIconCacheImpl;->updateIconInBackground(Lcom/android/quickstep/util/GroupTask;Ljava/util/function/Consumer;)Lcom/android/quickstep/util/CancellableTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/quickstep/util/CancellableTask<",
        "Ljava/util/List<",
        "+",
        "Lcom/android/quickstep/TaskIconCache$TaskCacheEntry;",
        ">;>;"
    }
.end annotation


# instance fields
.field public final synthetic $callback:Ljava/util/function/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Consumer<",
            "Lcom/android/quickstep/util/GroupTask;",
            ">;"
        }
    .end annotation
.end field

.field public final synthetic $task:Lcom/android/quickstep/util/GroupTask;

.field public final synthetic this$0:Lcom/android/quickstep/OplusTaskIconCacheImpl;


# direct methods
.method public constructor <init>(Lcom/android/quickstep/OplusTaskIconCacheImpl;Lcom/android/quickstep/util/GroupTask;Ljava/util/function/Consumer;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/quickstep/OplusTaskIconCacheImpl;",
            "Lcom/android/quickstep/util/GroupTask;",
            "Ljava/util/function/Consumer<",
            "Lcom/android/quickstep/util/GroupTask;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/quickstep/OplusTaskIconCacheImpl$updateIconInBackground$request$1;->this$0:Lcom/android/quickstep/OplusTaskIconCacheImpl;

    iput-object p2, p0, Lcom/android/quickstep/OplusTaskIconCacheImpl$updateIconInBackground$request$1;->$task:Lcom/android/quickstep/util/GroupTask;

    iput-object p3, p0, Lcom/android/quickstep/OplusTaskIconCacheImpl$updateIconInBackground$request$1;->$callback:Ljava/util/function/Consumer;

    invoke-direct {p0}, Lcom/android/quickstep/util/CancellableTask;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic getResultOnBg()Ljava/lang/Object;
    .registers 1

    invoke-virtual {p0}, Lcom/android/quickstep/OplusTaskIconCacheImpl$updateIconInBackground$request$1;->getResultOnBg()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getResultOnBg()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/quickstep/TaskIconCache$TaskCacheEntry;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/quickstep/OplusTaskIconCacheImpl$updateIconInBackground$request$1;->this$0:Lcom/android/quickstep/OplusTaskIconCacheImpl;

    iget-object p0, p0, Lcom/android/quickstep/OplusTaskIconCacheImpl$updateIconInBackground$request$1;->$task:Lcom/android/quickstep/util/GroupTask;

    invoke-virtual {v0, p0}, Lcom/android/quickstep/OplusTaskIconCacheImpl;->getSplitScreenCacheEntry(Lcom/android/quickstep/util/GroupTask;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic handleResult(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/android/quickstep/OplusTaskIconCacheImpl$updateIconInBackground$request$1;->handleResult(Ljava/util/List;)V

    return-void
.end method

.method public handleResult(Ljava/util/List;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/android/quickstep/TaskIconCache$TaskCacheEntry;",
            ">;)V"
        }
    .end annotation

    const-string v0, "entries"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/quickstep/TaskIconCache$TaskCacheEntry;

    const/4 v1, 0x1

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/quickstep/TaskIconCache$TaskCacheEntry;

    iget-object v1, p0, Lcom/android/quickstep/OplusTaskIconCacheImpl$updateIconInBackground$request$1;->$task:Lcom/android/quickstep/util/GroupTask;

    iget-object v1, v1, Lcom/android/quickstep/util/GroupTask;->task1:Lcom/android/systemui/shared/recents/model/Task;

    const-string/jumbo v2, "task.task1"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/quickstep/OplusTaskIconCacheImpl$updateIconInBackground$request$1;->$task:Lcom/android/quickstep/util/GroupTask;

    iget-object v2, v2, Lcom/android/quickstep/util/GroupTask;->task2:Lcom/android/systemui/shared/recents/model/Task;

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const-string/jumbo v3, "task.task2!!"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v3, p1, Lcom/android/quickstep/TaskIconCache$TaskCacheEntry;->splitIcon:Landroid/graphics/drawable/Drawable;

    iput-object v3, v1, Lcom/android/systemui/shared/recents/model/Task;->splitIcon:Landroid/graphics/drawable/Drawable;

    iget-object v4, v0, Lcom/android/quickstep/TaskIconCache$TaskCacheEntry;->contentDescription:Ljava/lang/String;

    iput-object v4, v1, Lcom/android/systemui/shared/recents/model/Task;->titleDescription:Ljava/lang/String;

    iget-object v0, v0, Lcom/android/quickstep/TaskIconCache$TaskCacheEntry;->title:Ljava/lang/String;

    iput-object v0, v1, Lcom/android/systemui/shared/recents/model/Task;->title:Ljava/lang/String;

    iput-object v3, v2, Lcom/android/systemui/shared/recents/model/Task;->splitIcon:Landroid/graphics/drawable/Drawable;

    iget-object v0, p1, Lcom/android/quickstep/TaskIconCache$TaskCacheEntry;->contentDescription:Ljava/lang/String;

    iput-object v0, v2, Lcom/android/systemui/shared/recents/model/Task;->titleDescription:Ljava/lang/String;

    iget-object p1, p1, Lcom/android/quickstep/TaskIconCache$TaskCacheEntry;->title:Ljava/lang/String;

    iput-object p1, v2, Lcom/android/systemui/shared/recents/model/Task;->title:Ljava/lang/String;

    iget-object p1, p0, Lcom/android/quickstep/OplusTaskIconCacheImpl$updateIconInBackground$request$1;->$callback:Ljava/util/function/Consumer;

    iget-object p0, p0, Lcom/android/quickstep/OplusTaskIconCacheImpl$updateIconInBackground$request$1;->$task:Lcom/android/quickstep/util/GroupTask;

    invoke-interface {p1, p0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method
