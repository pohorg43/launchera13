.class final Lcom/android/launcher/AppAdviceCheck$replaceCard$4;
.super Ld3/i;
.source ""

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation runtime Ld3/e;
    c = "com.android.launcher.AppAdviceCheck$replaceCard$4"
    f = "AppAdviceCheck.kt"
    l = {}
    m = "invokeSuspend"
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher/AppAdviceCheck;->replaceCard(Lcom/android/launcher/Launcher;Lcom/android/launcher3/model/data/ItemInfo;ILjava/lang/String;Lb3/d;)Ljava/lang/Object;
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
.field public final synthetic $launcher:Lcom/android/launcher/Launcher;

.field public final synthetic $newCardType:I

.field public final synthetic $newProviderName:Ljava/lang/String;

.field public final synthetic $oldCardInfo:Lcom/android/launcher3/model/data/ItemInfo;

.field public label:I


# direct methods
.method public constructor <init>(Lcom/android/launcher3/model/data/ItemInfo;ILjava/lang/String;Lcom/android/launcher/Launcher;Lb3/d;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/launcher3/model/data/ItemInfo;",
            "I",
            "Ljava/lang/String;",
            "Lcom/android/launcher/Launcher;",
            "Lb3/d<",
            "-",
            "Lcom/android/launcher/AppAdviceCheck$replaceCard$4;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/launcher/AppAdviceCheck$replaceCard$4;->$oldCardInfo:Lcom/android/launcher3/model/data/ItemInfo;

    iput p2, p0, Lcom/android/launcher/AppAdviceCheck$replaceCard$4;->$newCardType:I

    iput-object p3, p0, Lcom/android/launcher/AppAdviceCheck$replaceCard$4;->$newProviderName:Ljava/lang/String;

    iput-object p4, p0, Lcom/android/launcher/AppAdviceCheck$replaceCard$4;->$launcher:Lcom/android/launcher/Launcher;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p5}, Ld3/i;-><init>(ILb3/d;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lb3/d;)Lb3/d;
    .registers 9
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

    new-instance p1, Lcom/android/launcher/AppAdviceCheck$replaceCard$4;

    iget-object v1, p0, Lcom/android/launcher/AppAdviceCheck$replaceCard$4;->$oldCardInfo:Lcom/android/launcher3/model/data/ItemInfo;

    iget v2, p0, Lcom/android/launcher/AppAdviceCheck$replaceCard$4;->$newCardType:I

    iget-object v3, p0, Lcom/android/launcher/AppAdviceCheck$replaceCard$4;->$newProviderName:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/launcher/AppAdviceCheck$replaceCard$4;->$launcher:Lcom/android/launcher/Launcher;

    move-object v0, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/launcher/AppAdviceCheck$replaceCard$4;-><init>(Lcom/android/launcher3/model/data/ItemInfo;ILjava/lang/String;Lcom/android/launcher/Launcher;Lb3/d;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    check-cast p1, Lq3/f0;

    check-cast p2, Lb3/d;

    invoke-virtual {p0, p1, p2}, Lcom/android/launcher/AppAdviceCheck$replaceCard$4;->invoke(Lq3/f0;Lb3/d;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcom/android/launcher/AppAdviceCheck$replaceCard$4;->create(Ljava/lang/Object;Lb3/d;)Lb3/d;

    move-result-object p0

    check-cast p0, Lcom/android/launcher/AppAdviceCheck$replaceCard$4;

    sget-object p1, Ly2/p;->a:Ly2/p;

    invoke-virtual {p0, p1}, Lcom/android/launcher/AppAdviceCheck$replaceCard$4;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 10

    iget v0, p0, Lcom/android/launcher/AppAdviceCheck$replaceCard$4;->label:I

    if-nez v0, :cond_44

    invoke-static {p1}, Lq/d;->p(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/android/launcher/AppAdviceCheck$replaceCard$4;->$oldCardInfo:Lcom/android/launcher3/model/data/ItemInfo;

    const-string/jumbo v0, "replaceCard cardInfo:"

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "AppAdviceCheck"

    invoke-static {v0, p1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p1, Lcom/android/launcher/AppAdviceCheck;->INSTANCE:Lcom/android/launcher/AppAdviceCheck;

    iget v0, p0, Lcom/android/launcher/AppAdviceCheck$replaceCard$4;->$newCardType:I

    invoke-static {p1, v0}, Lcom/android/launcher/AppAdviceCheck;->access$buildPendingCardInfo(Lcom/android/launcher/AppAdviceCheck;I)Lcom/android/launcher3/PendingAddItemInfo;

    move-result-object v2

    iget-object p1, p0, Lcom/android/launcher/AppAdviceCheck$replaceCard$4;->$newProviderName:Ljava/lang/String;

    invoke-static {p1}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object p1

    iput-object p1, v2, Lcom/android/launcher3/PendingAddItemInfo;->componentName:Landroid/content/ComponentName;

    iget-object v1, p0, Lcom/android/launcher/AppAdviceCheck$replaceCard$4;->$launcher:Lcom/android/launcher/Launcher;

    iget-object p0, p0, Lcom/android/launcher/AppAdviceCheck$replaceCard$4;->$oldCardInfo:Lcom/android/launcher3/model/data/ItemInfo;

    iget v3, p0, Lcom/android/launcher3/model/data/ItemInfo;->container:I

    iget v4, p0, Lcom/android/launcher3/model/data/ItemInfo;->screenId:I

    const/4 p1, 0x2

    new-array v5, p1, [I

    const/4 p1, 0x0

    iget v0, p0, Lcom/android/launcher3/model/data/ItemInfo;->cellX:I

    aput v0, v5, p1

    const/4 p1, 0x1

    iget v0, p0, Lcom/android/launcher3/model/data/ItemInfo;->cellY:I

    aput v0, v5, p1

    iget v6, p0, Lcom/android/launcher3/model/data/ItemInfo;->spanX:I

    iget v7, p0, Lcom/android/launcher3/model/data/ItemInfo;->spanY:I

    invoke-virtual/range {v1 .. v7}, Lcom/android/launcher3/Launcher;->addPendingItem(Lcom/android/launcher3/PendingAddItemInfo;II[III)V

    sget-object p0, Ly2/p;->a:Ly2/p;

    return-object p0

    :cond_44
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
