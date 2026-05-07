.class final Lcom/android/launcher/AppAdviceCheck$tryAdd2Plus2Card$3;
.super Ld3/i;
.source ""

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation runtime Ld3/e;
    c = "com.android.launcher.AppAdviceCheck$tryAdd2Plus2Card$3"
    f = "AppAdviceCheck.kt"
    l = {}
    m = "invokeSuspend"
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher/AppAdviceCheck;->tryAdd2Plus2Card(Lcom/android/launcher/Launcher;IILjava/lang/String;Lb3/d;)Ljava/lang/Object;
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
        "Ljava/lang/Boolean;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic $cardType:I

.field public final synthetic $launcher:Lcom/android/launcher/Launcher;

.field public final synthetic $providerName:Ljava/lang/String;

.field public final synthetic $screenId:I

.field public label:I


# direct methods
.method public constructor <init>(IILjava/lang/String;Lcom/android/launcher/Launcher;Lb3/d;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/lang/String;",
            "Lcom/android/launcher/Launcher;",
            "Lb3/d<",
            "-",
            "Lcom/android/launcher/AppAdviceCheck$tryAdd2Plus2Card$3;",
            ">;)V"
        }
    .end annotation

    iput p1, p0, Lcom/android/launcher/AppAdviceCheck$tryAdd2Plus2Card$3;->$cardType:I

    iput p2, p0, Lcom/android/launcher/AppAdviceCheck$tryAdd2Plus2Card$3;->$screenId:I

    iput-object p3, p0, Lcom/android/launcher/AppAdviceCheck$tryAdd2Plus2Card$3;->$providerName:Ljava/lang/String;

    iput-object p4, p0, Lcom/android/launcher/AppAdviceCheck$tryAdd2Plus2Card$3;->$launcher:Lcom/android/launcher/Launcher;

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

    new-instance p1, Lcom/android/launcher/AppAdviceCheck$tryAdd2Plus2Card$3;

    iget v1, p0, Lcom/android/launcher/AppAdviceCheck$tryAdd2Plus2Card$3;->$cardType:I

    iget v2, p0, Lcom/android/launcher/AppAdviceCheck$tryAdd2Plus2Card$3;->$screenId:I

    iget-object v3, p0, Lcom/android/launcher/AppAdviceCheck$tryAdd2Plus2Card$3;->$providerName:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/launcher/AppAdviceCheck$tryAdd2Plus2Card$3;->$launcher:Lcom/android/launcher/Launcher;

    move-object v0, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/launcher/AppAdviceCheck$tryAdd2Plus2Card$3;-><init>(IILjava/lang/String;Lcom/android/launcher/Launcher;Lb3/d;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    check-cast p1, Lq3/f0;

    check-cast p2, Lb3/d;

    invoke-virtual {p0, p1, p2}, Lcom/android/launcher/AppAdviceCheck$tryAdd2Plus2Card$3;->invoke(Lq3/f0;Lb3/d;)Ljava/lang/Object;

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
            "Ljava/lang/Boolean;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/android/launcher/AppAdviceCheck$tryAdd2Plus2Card$3;->create(Ljava/lang/Object;Lb3/d;)Lb3/d;

    move-result-object p0

    check-cast p0, Lcom/android/launcher/AppAdviceCheck$tryAdd2Plus2Card$3;

    sget-object p1, Ly2/p;->a:Ly2/p;

    invoke-virtual {p0, p1}, Lcom/android/launcher/AppAdviceCheck$tryAdd2Plus2Card$3;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 6

    iget v0, p0, Lcom/android/launcher/AppAdviceCheck$tryAdd2Plus2Card$3;->label:I

    if-nez v0, :cond_6e

    invoke-static {p1}, Lq/d;->p(Ljava/lang/Object;)V

    sget-object p1, Lcom/oplus/card/manager/domain/CardManager;->Companion:Lcom/oplus/card/manager/domain/CardManager$Companion;

    invoke-virtual {p1}, Lcom/oplus/card/manager/domain/CardManager$Companion;->getInstance()Lcom/oplus/card/manager/domain/CardManager;

    move-result-object p1

    iget v0, p0, Lcom/android/launcher/AppAdviceCheck$tryAdd2Plus2Card$3;->$cardType:I

    invoke-virtual {p1, v0}, Lcom/oplus/card/manager/domain/CardManager;->getCardConfigInfo(I)Lcom/oplus/card/config/domain/model/CardConfigInfo;

    move-result-object p1

    if-eqz p1, :cond_6b

    invoke-virtual {p1}, Lcom/oplus/card/config/domain/model/CardConfigInfo;->initSpans()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "tryAddCardOnScreen add card("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/launcher/AppAdviceCheck$tryAdd2Plus2Card$3;->$cardType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ") to workspace addScreen = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/launcher/AppAdviceCheck$tryAdd2Plus2Card$3;->$screenId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AppAdviceCheck"

    invoke-static {v1, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/android/launcher3/card/PendingAddCardInfo;

    const/16 v2, -0x69

    invoke-direct {v0, p1, v2}, Lcom/android/launcher3/card/PendingAddCardInfo;-><init>(Lcom/oplus/card/config/domain/model/CardConfigInfo;I)V

    iget-object v3, p0, Lcom/android/launcher/AppAdviceCheck$tryAdd2Plus2Card$3;->$providerName:Ljava/lang/String;

    invoke-static {v3}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v3

    iput-object v3, v0, Lcom/android/launcher3/PendingAddItemInfo;->componentName:Landroid/content/ComponentName;

    iget-object p0, p0, Lcom/android/launcher/AppAdviceCheck$tryAdd2Plus2Card$3;->$launcher:Lcom/android/launcher/Launcher;

    new-instance v0, Lcom/android/launcher3/card/PendingAddCardInfo;

    invoke-direct {v0, p1, v2}, Lcom/android/launcher3/card/PendingAddCardInfo;-><init>(Lcom/oplus/card/config/domain/model/CardConfigInfo;I)V

    const/4 p1, 0x1

    invoke-virtual {p0, v0, p1}, Lcom/android/launcher/Launcher;->addCardFromFirstScreen(Lcom/android/launcher3/widget/PendingAddWidgetInfo;Z)Z

    move-result p0

    if-nez p0, :cond_66

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const-string/jumbo v0, "tryAddCardOnScreen addOk="

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_66
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :cond_6b
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p0

    :cond_6e
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
