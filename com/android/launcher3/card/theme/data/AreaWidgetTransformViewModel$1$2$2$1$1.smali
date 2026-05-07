.class final Lcom/android/launcher3/card/theme/data/AreaWidgetTransformViewModel$1$2$2$1$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lt3/e;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/card/theme/data/AreaWidgetTransformViewModel$1$2$2$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lt3/e;"
    }
.end annotation


# instance fields
.field public final synthetic $launcher:Lcom/android/launcher/Launcher;

.field public final synthetic $this_runCatching:Lcom/android/launcher3/card/theme/data/AreaWidgetTransformViewModel;


# direct methods
.method public constructor <init>(Lcom/android/launcher3/card/theme/data/AreaWidgetTransformViewModel;Lcom/android/launcher/Launcher;)V
    .registers 3

    iput-object p1, p0, Lcom/android/launcher3/card/theme/data/AreaWidgetTransformViewModel$1$2$2$1$1;->$this_runCatching:Lcom/android/launcher3/card/theme/data/AreaWidgetTransformViewModel;

    iput-object p2, p0, Lcom/android/launcher3/card/theme/data/AreaWidgetTransformViewModel$1$2$2$1$1;->$launcher:Lcom/android/launcher/Launcher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic emit(Ljava/lang/Object;Lb3/d;)Ljava/lang/Object;
    .registers 3

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lcom/android/launcher3/card/theme/data/AreaWidgetTransformViewModel$1$2$2$1$1;->emit(Ljava/lang/String;Lb3/d;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final emit(Ljava/lang/String;Lb3/d;)Ljava/lang/Object;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lb3/d<",
            "-",
            "Ly2/p;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p2, Lcom/android/launcher3/card/theme/data/AreaWidgetTransformViewModel$1$2$2$1$1$emit$1;

    if-eqz v0, :cond_13

    move-object v0, p2

    check-cast v0, Lcom/android/launcher3/card/theme/data/AreaWidgetTransformViewModel$1$2$2$1$1$emit$1;

    iget v1, v0, Lcom/android/launcher3/card/theme/data/AreaWidgetTransformViewModel$1$2$2$1$1$emit$1;->label:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_13

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/android/launcher3/card/theme/data/AreaWidgetTransformViewModel$1$2$2$1$1$emit$1;->label:I

    goto :goto_18

    :cond_13
    new-instance v0, Lcom/android/launcher3/card/theme/data/AreaWidgetTransformViewModel$1$2$2$1$1$emit$1;

    invoke-direct {v0, p0, p2}, Lcom/android/launcher3/card/theme/data/AreaWidgetTransformViewModel$1$2$2$1$1$emit$1;-><init>(Lcom/android/launcher3/card/theme/data/AreaWidgetTransformViewModel$1$2$2$1$1;Lb3/d;)V

    :goto_18
    iget-object p2, v0, Lcom/android/launcher3/card/theme/data/AreaWidgetTransformViewModel$1$2$2$1$1$emit$1;->result:Ljava/lang/Object;

    sget-object v1, Lc3/a;->a:Lc3/a;

    iget v2, v0, Lcom/android/launcher3/card/theme/data/AreaWidgetTransformViewModel$1$2$2$1$1$emit$1;->label:I

    const-string v3, "NO_REQUEST"

    const/4 v4, 0x1

    if-eqz v2, :cond_3a

    if-ne v2, v4, :cond_32

    iget-object p0, v0, Lcom/android/launcher3/card/theme/data/AreaWidgetTransformViewModel$1$2$2$1$1$emit$1;->L$1:Ljava/lang/Object;

    move-object p1, p0

    check-cast p1, Ljava/lang/String;

    iget-object p0, v0, Lcom/android/launcher3/card/theme/data/AreaWidgetTransformViewModel$1$2$2$1$1$emit$1;->L$0:Ljava/lang/Object;

    check-cast p0, Lcom/android/launcher3/card/theme/data/AreaWidgetTransformViewModel$1$2$2$1$1;

    invoke-static {p2}, Lq/d;->p(Ljava/lang/Object;)V

    goto :goto_5f

    :cond_32
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3a
    invoke-static {p2}, Lq/d;->p(Ljava/lang/Object;)V

    const-string p2, "collect transform request:"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    const-string v2, "AreaWidgetTransformViewModel"

    invoke-static {v2, p2}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v3, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_7d

    iget-object p2, p0, Lcom/android/launcher3/card/theme/data/AreaWidgetTransformViewModel$1$2$2$1$1;->$this_runCatching:Lcom/android/launcher3/card/theme/data/AreaWidgetTransformViewModel;

    iget-object v2, p0, Lcom/android/launcher3/card/theme/data/AreaWidgetTransformViewModel$1$2$2$1$1;->$launcher:Lcom/android/launcher/Launcher;

    iput-object p0, v0, Lcom/android/launcher3/card/theme/data/AreaWidgetTransformViewModel$1$2$2$1$1$emit$1;->L$0:Ljava/lang/Object;

    iput-object p1, v0, Lcom/android/launcher3/card/theme/data/AreaWidgetTransformViewModel$1$2$2$1$1$emit$1;->L$1:Ljava/lang/Object;

    iput v4, v0, Lcom/android/launcher3/card/theme/data/AreaWidgetTransformViewModel$1$2$2$1$1$emit$1;->label:I

    invoke-static {p2, v2, v0}, Lcom/android/launcher3/card/theme/data/AreaWidgetTransformViewModel;->access$checkIsFinishBinding(Lcom/android/launcher3/card/theme/data/AreaWidgetTransformViewModel;Lcom/android/launcher/Launcher;Lb3/d;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_5f

    return-object v1

    :cond_5f
    :goto_5f
    iget-object p2, p0, Lcom/android/launcher3/card/theme/data/AreaWidgetTransformViewModel$1$2$2$1$1;->$this_runCatching:Lcom/android/launcher3/card/theme/data/AreaWidgetTransformViewModel;

    invoke-static {p2}, Lcom/android/launcher3/card/theme/data/AreaWidgetTransformViewModel;->access$get_transformRequestFlow$p(Lcom/android/launcher3/card/theme/data/AreaWidgetTransformViewModel;)Lt3/i;

    move-result-object p2

    invoke-interface {p2, v3}, Lt3/i;->setValue(Ljava/lang/Object;)V

    iget-object p2, p0, Lcom/android/launcher3/card/theme/data/AreaWidgetTransformViewModel$1$2$2$1$1;->$launcher:Lcom/android/launcher/Launcher;

    invoke-static {p2}, Landroidx/lifecycle/LifecycleOwnerKt;->getLifecycleScope(Landroidx/lifecycle/LifecycleOwner;)Landroidx/lifecycle/LifecycleCoroutineScope;

    move-result-object v0

    const/4 v1, 0x0

    new-instance v3, Lcom/android/launcher3/card/theme/data/AreaWidgetTransformViewModel$1$2$2$1$1$1;

    iget-object p0, p0, Lcom/android/launcher3/card/theme/data/AreaWidgetTransformViewModel$1$2$2$1$1;->$launcher:Lcom/android/launcher/Launcher;

    const/4 p2, 0x0

    invoke-direct {v3, p1, p0, p2}, Lcom/android/launcher3/card/theme/data/AreaWidgetTransformViewModel$1$2$2$1$1$1;-><init>(Ljava/lang/String;Lcom/android/launcher/Launcher;Lb3/d;)V

    const/4 v4, 0x3

    const/4 v5, 0x0

    const/4 v2, 0x0

    invoke-static/range {v0 .. v5}, Lq3/g;->e(Lq3/f0;Lb3/f;ILkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lq3/i1;

    :cond_7d
    sget-object p0, Ly2/p;->a:Ly2/p;

    return-object p0
.end method
