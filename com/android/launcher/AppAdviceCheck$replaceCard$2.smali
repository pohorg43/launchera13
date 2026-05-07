.class final Lcom/android/launcher/AppAdviceCheck$replaceCard$2;
.super Ld3/i;
.source ""

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation runtime Ld3/e;
    c = "com.android.launcher.AppAdviceCheck$replaceCard$2"
    f = "AppAdviceCheck.kt"
    l = {
        0x1d8
    }
    m = "invokeSuspend"
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher/AppAdviceCheck;->replaceCard(Lcom/android/launcher/Launcher;Landroid/view/View;Lcom/android/launcher3/card/LauncherCardInfo;ILjava/lang/String;Lb3/d;)Ljava/lang/Object;
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

.field public final synthetic $oldCardInfo:Lcom/android/launcher3/card/LauncherCardInfo;

.field public final synthetic $oldView:Landroid/view/View;

.field public label:I


# direct methods
.method public constructor <init>(Lcom/android/launcher3/card/LauncherCardInfo;Lcom/android/launcher/Launcher;Landroid/view/View;ILjava/lang/String;Lb3/d;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/launcher3/card/LauncherCardInfo;",
            "Lcom/android/launcher/Launcher;",
            "Landroid/view/View;",
            "I",
            "Ljava/lang/String;",
            "Lb3/d<",
            "-",
            "Lcom/android/launcher/AppAdviceCheck$replaceCard$2;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/launcher/AppAdviceCheck$replaceCard$2;->$oldCardInfo:Lcom/android/launcher3/card/LauncherCardInfo;

    iput-object p2, p0, Lcom/android/launcher/AppAdviceCheck$replaceCard$2;->$launcher:Lcom/android/launcher/Launcher;

    iput-object p3, p0, Lcom/android/launcher/AppAdviceCheck$replaceCard$2;->$oldView:Landroid/view/View;

    iput p4, p0, Lcom/android/launcher/AppAdviceCheck$replaceCard$2;->$newCardType:I

    iput-object p5, p0, Lcom/android/launcher/AppAdviceCheck$replaceCard$2;->$newProviderName:Ljava/lang/String;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p6}, Ld3/i;-><init>(ILb3/d;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lb3/d;)Lb3/d;
    .registers 10
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

    new-instance p1, Lcom/android/launcher/AppAdviceCheck$replaceCard$2;

    iget-object v1, p0, Lcom/android/launcher/AppAdviceCheck$replaceCard$2;->$oldCardInfo:Lcom/android/launcher3/card/LauncherCardInfo;

    iget-object v2, p0, Lcom/android/launcher/AppAdviceCheck$replaceCard$2;->$launcher:Lcom/android/launcher/Launcher;

    iget-object v3, p0, Lcom/android/launcher/AppAdviceCheck$replaceCard$2;->$oldView:Landroid/view/View;

    iget v4, p0, Lcom/android/launcher/AppAdviceCheck$replaceCard$2;->$newCardType:I

    iget-object v5, p0, Lcom/android/launcher/AppAdviceCheck$replaceCard$2;->$newProviderName:Ljava/lang/String;

    move-object v0, p1

    move-object v6, p2

    invoke-direct/range {v0 .. v6}, Lcom/android/launcher/AppAdviceCheck$replaceCard$2;-><init>(Lcom/android/launcher3/card/LauncherCardInfo;Lcom/android/launcher/Launcher;Landroid/view/View;ILjava/lang/String;Lb3/d;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    check-cast p1, Lq3/f0;

    check-cast p2, Lb3/d;

    invoke-virtual {p0, p1, p2}, Lcom/android/launcher/AppAdviceCheck$replaceCard$2;->invoke(Lq3/f0;Lb3/d;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcom/android/launcher/AppAdviceCheck$replaceCard$2;->create(Ljava/lang/Object;Lb3/d;)Lb3/d;

    move-result-object p0

    check-cast p0, Lcom/android/launcher/AppAdviceCheck$replaceCard$2;

    sget-object p1, Ly2/p;->a:Ly2/p;

    invoke-virtual {p0, p1}, Lcom/android/launcher/AppAdviceCheck$replaceCard$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 12

    sget-object v0, Lc3/a;->a:Lc3/a;

    iget v1, p0, Lcom/android/launcher/AppAdviceCheck$replaceCard$2;->label:I

    const/4 v2, 0x1

    if-eqz v1, :cond_15

    if-ne v1, v2, :cond_d

    invoke-static {p1}, Lq/d;->p(Ljava/lang/Object;)V

    goto :goto_43

    :cond_d
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_15
    invoke-static {p1}, Lq/d;->p(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/android/launcher/AppAdviceCheck$replaceCard$2;->$oldCardInfo:Lcom/android/launcher3/card/LauncherCardInfo;

    const-string/jumbo v1, "replaceCard removeCard cardInfo:"

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "AppAdviceCheck"

    invoke-static {v1, p1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/launcher/AppAdviceCheck$replaceCard$2;->$launcher:Lcom/android/launcher/Launcher;

    iget-object v1, p0, Lcom/android/launcher/AppAdviceCheck$replaceCard$2;->$oldView:Landroid/view/View;

    iget-object v3, p0, Lcom/android/launcher/AppAdviceCheck$replaceCard$2;->$oldCardInfo:Lcom/android/launcher3/card/LauncherCardInfo;

    invoke-virtual {p1, v1, v3, v2}, Lcom/android/launcher3/Launcher;->removeItem(Landroid/view/View;Lcom/android/launcher3/model/data/ItemInfo;Z)Z

    sget-object v4, Lcom/android/launcher/AppAdviceCheck;->INSTANCE:Lcom/android/launcher/AppAdviceCheck;

    iget-object v5, p0, Lcom/android/launcher/AppAdviceCheck$replaceCard$2;->$launcher:Lcom/android/launcher/Launcher;

    iget-object v6, p0, Lcom/android/launcher/AppAdviceCheck$replaceCard$2;->$oldCardInfo:Lcom/android/launcher3/card/LauncherCardInfo;

    iget v7, p0, Lcom/android/launcher/AppAdviceCheck$replaceCard$2;->$newCardType:I

    iget-object v8, p0, Lcom/android/launcher/AppAdviceCheck$replaceCard$2;->$newProviderName:Ljava/lang/String;

    iput v2, p0, Lcom/android/launcher/AppAdviceCheck$replaceCard$2;->label:I

    move-object v9, p0

    invoke-static/range {v4 .. v9}, Lcom/android/launcher/AppAdviceCheck;->access$replaceCard(Lcom/android/launcher/AppAdviceCheck;Lcom/android/launcher/Launcher;Lcom/android/launcher3/model/data/ItemInfo;ILjava/lang/String;Lb3/d;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v0, :cond_43

    return-object v0

    :cond_43
    :goto_43
    sget-object p0, Ly2/p;->a:Ly2/p;

    return-object p0
.end method
