.class final Lcom/android/launcher/AppAdviceCheck$tryAddAppAdviceCard$1;
.super Ld3/i;
.source ""

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation runtime Ld3/e;
    c = "com.android.launcher.AppAdviceCheck$tryAddAppAdviceCard$1"
    f = "AppAdviceCheck.kt"
    l = {
        0xb2,
        0xb7
    }
    m = "invokeSuspend"
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher/AppAdviceCheck;->tryAddAppAdviceCard(Z)V
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
.field public final synthetic $debug:Z

.field public final synthetic $launcher:Lcom/android/launcher/Launcher;

.field public label:I


# direct methods
.method public constructor <init>(Lcom/android/launcher/Launcher;ZLb3/d;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/launcher/Launcher;",
            "Z",
            "Lb3/d<",
            "-",
            "Lcom/android/launcher/AppAdviceCheck$tryAddAppAdviceCard$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/launcher/AppAdviceCheck$tryAddAppAdviceCard$1;->$launcher:Lcom/android/launcher/Launcher;

    iput-boolean p2, p0, Lcom/android/launcher/AppAdviceCheck$tryAddAppAdviceCard$1;->$debug:Z

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

    new-instance p1, Lcom/android/launcher/AppAdviceCheck$tryAddAppAdviceCard$1;

    iget-object v0, p0, Lcom/android/launcher/AppAdviceCheck$tryAddAppAdviceCard$1;->$launcher:Lcom/android/launcher/Launcher;

    iget-boolean p0, p0, Lcom/android/launcher/AppAdviceCheck$tryAddAppAdviceCard$1;->$debug:Z

    invoke-direct {p1, v0, p0, p2}, Lcom/android/launcher/AppAdviceCheck$tryAddAppAdviceCard$1;-><init>(Lcom/android/launcher/Launcher;ZLb3/d;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    check-cast p1, Lq3/f0;

    check-cast p2, Lb3/d;

    invoke-virtual {p0, p1, p2}, Lcom/android/launcher/AppAdviceCheck$tryAddAppAdviceCard$1;->invoke(Lq3/f0;Lb3/d;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcom/android/launcher/AppAdviceCheck$tryAddAppAdviceCard$1;->create(Ljava/lang/Object;Lb3/d;)Lb3/d;

    move-result-object p0

    check-cast p0, Lcom/android/launcher/AppAdviceCheck$tryAddAppAdviceCard$1;

    sget-object p1, Ly2/p;->a:Ly2/p;

    invoke-virtual {p0, p1}, Lcom/android/launcher/AppAdviceCheck$tryAddAppAdviceCard$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 8

    sget-object v0, Lc3/a;->a:Lc3/a;

    iget v1, p0, Lcom/android/launcher/AppAdviceCheck$tryAddAppAdviceCard$1;->label:I

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eqz v1, :cond_1c

    if-eq v1, v3, :cond_18

    if-ne v1, v2, :cond_10

    invoke-static {p1}, Lq/d;->p(Ljava/lang/Object;)V

    goto :goto_66

    :cond_10
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_18
    invoke-static {p1}, Lq/d;->p(Ljava/lang/Object;)V

    goto :goto_36

    :cond_1c
    invoke-static {p1}, Lq/d;->p(Ljava/lang/Object;)V

    sget-object p1, Lcom/oplus/card/manager/domain/CardManager;->Companion:Lcom/oplus/card/manager/domain/CardManager$Companion;

    invoke-virtual {p1}, Lcom/oplus/card/manager/domain/CardManager$Companion;->getInstance()Lcom/oplus/card/manager/domain/CardManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/oplus/card/manager/domain/CardManager;->getCardConfigMapSize()I

    move-result p1

    if-gtz p1, :cond_36

    const-wide/16 v4, 0x1388

    iput v3, p0, Lcom/android/launcher/AppAdviceCheck$tryAddAppAdviceCard$1;->label:I

    invoke-static {v4, v5, p0}, Lp/d;->a(JLb3/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_36

    return-object v0

    :cond_36
    :goto_36
    sget-object p1, Lcom/oplus/card/manager/domain/CardManager;->Companion:Lcom/oplus/card/manager/domain/CardManager$Companion;

    invoke-virtual {p1}, Lcom/oplus/card/manager/domain/CardManager$Companion;->getInstance()Lcom/oplus/card/manager/domain/CardManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/oplus/card/manager/domain/CardManager;->getCardConfigMapSize()I

    move-result p1

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p1}, Ljava/lang/Integer;-><init>(I)V

    const-string/jumbo v3, "tryAddAppAdviceCard cardSize="

    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "AppAdviceCheck"

    invoke-static {v3, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-lez p1, :cond_60

    iget-object p1, p0, Lcom/android/launcher/AppAdviceCheck$tryAddAppAdviceCard$1;->$launcher:Lcom/android/launcher/Launcher;

    iget-boolean v1, p0, Lcom/android/launcher/AppAdviceCheck$tryAddAppAdviceCard$1;->$debug:Z

    iput v2, p0, Lcom/android/launcher/AppAdviceCheck$tryAddAppAdviceCard$1;->label:I

    invoke-static {p1, v1, p0}, Lcom/android/launcher/AppAdviceCheck;->access$tryAddAdviceCard(Lcom/android/launcher/Launcher;ZLb3/d;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v0, :cond_66

    return-object v0

    :cond_60
    sget-object p0, Lcom/android/launcher/AppAdviceCheck;->INSTANCE:Lcom/android/launcher/AppAdviceCheck;

    const/4 p0, 0x0

    invoke-static {p0}, Lcom/android/launcher/AppAdviceCheck;->access$setWorking$p(Z)V

    :cond_66
    :goto_66
    sget-object p0, Ly2/p;->a:Ly2/p;

    return-object p0
.end method
