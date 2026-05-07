.class final Lcom/android/launcher/AppAdviceCheck$innerTryAddAdviceCard$3$1;
.super Ld3/i;
.source ""

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation runtime Ld3/e;
    c = "com.android.launcher.AppAdviceCheck$innerTryAddAdviceCard$3$1"
    f = "AppAdviceCheck.kt"
    l = {
        0x151,
        0x155
    }
    m = "invokeSuspend"
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher/AppAdviceCheck$innerTryAddAdviceCard$3;->invoke(ZLjava/lang/String;)V
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

.field public final synthetic $newWidgetInfo:Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;

.field public final synthetic $oldWidgetInfo:Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;

.field public label:I


# direct methods
.method public constructor <init>(Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;Lcom/android/launcher/Launcher;Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;Lb3/d;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;",
            "Lcom/android/launcher/Launcher;",
            "Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;",
            "Lb3/d<",
            "-",
            "Lcom/android/launcher/AppAdviceCheck$innerTryAddAdviceCard$3$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/launcher/AppAdviceCheck$innerTryAddAdviceCard$3$1;->$oldWidgetInfo:Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;

    iput-object p2, p0, Lcom/android/launcher/AppAdviceCheck$innerTryAddAdviceCard$3$1;->$launcher:Lcom/android/launcher/Launcher;

    iput-object p3, p0, Lcom/android/launcher/AppAdviceCheck$innerTryAddAdviceCard$3$1;->$newWidgetInfo:Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;

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

    new-instance p1, Lcom/android/launcher/AppAdviceCheck$innerTryAddAdviceCard$3$1;

    iget-object v0, p0, Lcom/android/launcher/AppAdviceCheck$innerTryAddAdviceCard$3$1;->$oldWidgetInfo:Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;

    iget-object v1, p0, Lcom/android/launcher/AppAdviceCheck$innerTryAddAdviceCard$3$1;->$launcher:Lcom/android/launcher/Launcher;

    iget-object p0, p0, Lcom/android/launcher/AppAdviceCheck$innerTryAddAdviceCard$3$1;->$newWidgetInfo:Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;

    invoke-direct {p1, v0, v1, p0, p2}, Lcom/android/launcher/AppAdviceCheck$innerTryAddAdviceCard$3$1;-><init>(Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;Lcom/android/launcher/Launcher;Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;Lb3/d;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    check-cast p1, Lq3/f0;

    check-cast p2, Lb3/d;

    invoke-virtual {p0, p1, p2}, Lcom/android/launcher/AppAdviceCheck$innerTryAddAdviceCard$3$1;->invoke(Lq3/f0;Lb3/d;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcom/android/launcher/AppAdviceCheck$innerTryAddAdviceCard$3$1;->create(Ljava/lang/Object;Lb3/d;)Lb3/d;

    move-result-object p0

    check-cast p0, Lcom/android/launcher/AppAdviceCheck$innerTryAddAdviceCard$3$1;

    sget-object p1, Ly2/p;->a:Ly2/p;

    invoke-virtual {p0, p1}, Lcom/android/launcher/AppAdviceCheck$innerTryAddAdviceCard$3$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 11

    sget-object v0, Lc3/a;->a:Lc3/a;

    iget v1, p0, Lcom/android/launcher/AppAdviceCheck$innerTryAddAdviceCard$3$1;->label:I

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eqz v1, :cond_1c

    if-eq v1, v3, :cond_18

    if-ne v1, v2, :cond_10

    invoke-static {p1}, Lq/d;->p(Ljava/lang/Object;)V

    goto :goto_46

    :cond_10
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_18
    invoke-static {p1}, Lq/d;->p(Ljava/lang/Object;)V

    goto :goto_3b

    :cond_1c
    invoke-static {p1}, Lq/d;->p(Ljava/lang/Object;)V

    iget-object v5, p0, Lcom/android/launcher/AppAdviceCheck$innerTryAddAdviceCard$3$1;->$oldWidgetInfo:Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;

    iget p1, v5, Lcom/android/launcher3/model/data/ItemInfo;->cellY:I

    add-int/2addr p1, v3

    iput p1, v5, Lcom/android/launcher3/model/data/ItemInfo;->cellY:I

    iput v2, v5, Lcom/android/launcher3/model/data/ItemInfo;->spanY:I

    sget-object p1, Lcom/android/launcher/AppAdviceCheck;->INSTANCE:Lcom/android/launcher/AppAdviceCheck;

    iget-object v4, p0, Lcom/android/launcher/AppAdviceCheck$innerTryAddAdviceCard$3$1;->$launcher:Lcom/android/launcher/Launcher;

    const/16 v6, 0x52

    iput v3, p0, Lcom/android/launcher/AppAdviceCheck$innerTryAddAdviceCard$3$1;->label:I

    const-string v7, "com.coloros.assistantscreen/com.oplus.assistantscreen.card.quickapp.provider.QuickAppWidgetProvider"

    move-object v3, p1

    move-object v8, p0

    invoke-static/range {v3 .. v8}, Lcom/android/launcher/AppAdviceCheck;->access$replaceCard(Lcom/android/launcher/AppAdviceCheck;Lcom/android/launcher/Launcher;Lcom/android/launcher3/model/data/ItemInfo;ILjava/lang/String;Lb3/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_3b

    return-object v0

    :cond_3b
    :goto_3b
    const-wide/16 v3, 0x1f4

    iput v2, p0, Lcom/android/launcher/AppAdviceCheck$innerTryAddAdviceCard$3$1;->label:I

    invoke-static {v3, v4, p0}, Lp/d;->a(JLb3/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_46

    return-object v0

    :cond_46
    :goto_46
    sget-object p1, Lcom/android/launcher/AppAdviceCheck;->INSTANCE:Lcom/android/launcher/AppAdviceCheck;

    invoke-static {}, Lcom/android/launcher/AppAdviceCheck;->access$getMLauncher$p()Lcom/android/launcher/Launcher;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/android/launcher/AppAdviceCheck$innerTryAddAdviceCard$3$1;->$newWidgetInfo:Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;

    iget p0, p0, Lcom/android/launcher3/model/data/ItemInfo;->screenId:I

    invoke-static {p1, v0, p0}, Lcom/android/launcher/AppAdviceCheck;->access$getAdviceCardInfoFromScreen(Lcom/android/launcher/AppAdviceCheck;Landroid/content/Context;I)Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/android/launcher/AppAdviceCheck;->access$onReInstallCallback(Lcom/android/launcher/AppAdviceCheck;Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;)V

    sget-object p0, Ly2/p;->a:Ly2/p;

    return-object p0
.end method
