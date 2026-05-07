.class final Lcom/android/launcher/AppAdviceCheck$innerTryAddAdviceCard$4$1;
.super Ld3/i;
.source ""

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation runtime Ld3/e;
    c = "com.android.launcher.AppAdviceCheck$innerTryAddAdviceCard$4$1"
    f = "AppAdviceCheck.kt"
    l = {
        0x165,
        0x167
    }
    m = "invokeSuspend"
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher/AppAdviceCheck;->innerTryAddAdviceCard$lambda-2(Lcom/android/launcher/Launcher;)V
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

.field public label:I


# direct methods
.method public constructor <init>(Lcom/android/launcher/Launcher;Lb3/d;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/launcher/Launcher;",
            "Lb3/d<",
            "-",
            "Lcom/android/launcher/AppAdviceCheck$innerTryAddAdviceCard$4$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/launcher/AppAdviceCheck$innerTryAddAdviceCard$4$1;->$launcher:Lcom/android/launcher/Launcher;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Ld3/i;-><init>(ILb3/d;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lb3/d;)Lb3/d;
    .registers 3
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

    new-instance p1, Lcom/android/launcher/AppAdviceCheck$innerTryAddAdviceCard$4$1;

    iget-object p0, p0, Lcom/android/launcher/AppAdviceCheck$innerTryAddAdviceCard$4$1;->$launcher:Lcom/android/launcher/Launcher;

    invoke-direct {p1, p0, p2}, Lcom/android/launcher/AppAdviceCheck$innerTryAddAdviceCard$4$1;-><init>(Lcom/android/launcher/Launcher;Lb3/d;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    check-cast p1, Lq3/f0;

    check-cast p2, Lb3/d;

    invoke-virtual {p0, p1, p2}, Lcom/android/launcher/AppAdviceCheck$innerTryAddAdviceCard$4$1;->invoke(Lq3/f0;Lb3/d;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcom/android/launcher/AppAdviceCheck$innerTryAddAdviceCard$4$1;->create(Ljava/lang/Object;Lb3/d;)Lb3/d;

    move-result-object p0

    check-cast p0, Lcom/android/launcher/AppAdviceCheck$innerTryAddAdviceCard$4$1;

    sget-object p1, Ly2/p;->a:Ly2/p;

    invoke-virtual {p0, p1}, Lcom/android/launcher/AppAdviceCheck$innerTryAddAdviceCard$4$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 6

    sget-object v0, Lc3/a;->a:Lc3/a;

    iget v1, p0, Lcom/android/launcher/AppAdviceCheck$innerTryAddAdviceCard$4$1;->label:I

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eqz v1, :cond_1c

    if-eq v1, v3, :cond_18

    if-ne v1, v2, :cond_10

    invoke-static {p1}, Lq/d;->p(Ljava/lang/Object;)V

    goto :goto_41

    :cond_10
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_18
    invoke-static {p1}, Lq/d;->p(Ljava/lang/Object;)V

    goto :goto_2c

    :cond_1c
    invoke-static {p1}, Lq/d;->p(Ljava/lang/Object;)V

    sget-object p1, Lcom/android/launcher/AppAdviceCheck;->INSTANCE:Lcom/android/launcher/AppAdviceCheck;

    iget-object v1, p0, Lcom/android/launcher/AppAdviceCheck$innerTryAddAdviceCard$4$1;->$launcher:Lcom/android/launcher/Launcher;

    iput v3, p0, Lcom/android/launcher/AppAdviceCheck$innerTryAddAdviceCard$4$1;->label:I

    invoke-static {p1, v1, p0}, Lcom/android/launcher/AppAdviceCheck;->access$tryAdd2Plus2CardOnScreen(Lcom/android/launcher/AppAdviceCheck;Lcom/android/launcher/Launcher;Lb3/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_2c

    return-object v0

    :cond_2c
    :goto_2c
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-nez p1, :cond_41

    sget-object p1, Lcom/android/launcher/AppAdviceCheck;->INSTANCE:Lcom/android/launcher/AppAdviceCheck;

    iget-object v1, p0, Lcom/android/launcher/AppAdviceCheck$innerTryAddAdviceCard$4$1;->$launcher:Lcom/android/launcher/Launcher;

    iput v2, p0, Lcom/android/launcher/AppAdviceCheck$innerTryAddAdviceCard$4$1;->label:I

    invoke-static {p1, v1, p0}, Lcom/android/launcher/AppAdviceCheck;->access$tryAddCardOnLastScreen(Lcom/android/launcher/AppAdviceCheck;Lcom/android/launcher/Launcher;Lb3/d;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v0, :cond_41

    return-object v0

    :cond_41
    :goto_41
    sget-object p0, Ly2/p;->a:Ly2/p;

    return-object p0
.end method
