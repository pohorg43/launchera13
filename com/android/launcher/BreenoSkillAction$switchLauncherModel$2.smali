.class final Lcom/android/launcher/BreenoSkillAction$switchLauncherModel$2;
.super Lkotlin/jvm/internal/Lambda;
.source ""

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher/BreenoSkillAction;->switchLauncherModel(Lcom/android/launcher/mode/LauncherMode;Lcom/android/launcher/mode/LauncherMode;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Ljava/lang/Boolean;",
        "Ly2/p;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic $handler:Landroid/os/Handler;

.field public final synthetic this$0:Lcom/android/launcher/BreenoSkillAction;


# direct methods
.method public constructor <init>(Landroid/os/Handler;Lcom/android/launcher/BreenoSkillAction;)V
    .registers 3

    iput-object p1, p0, Lcom/android/launcher/BreenoSkillAction$switchLauncherModel$2;->$handler:Landroid/os/Handler;

    iput-object p2, p0, Lcom/android/launcher/BreenoSkillAction$switchLauncherModel$2;->this$0:Lcom/android/launcher/BreenoSkillAction;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method

.method public static synthetic a(Lcom/android/launcher/BreenoSkillAction;)V
    .registers 1

    invoke-static {p0}, Lcom/android/launcher/BreenoSkillAction$switchLauncherModel$2;->invoke$lambda-0(Lcom/android/launcher/BreenoSkillAction;)V

    return-void
.end method

.method private static final invoke$lambda-0(Lcom/android/launcher/BreenoSkillAction;)V
    .registers 2

    const-string/jumbo v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/launcher/BreenoSkillAction;->startLauncherActivity()V

    invoke-static {p0}, Lcom/android/launcher/BreenoSkillAction;->access$getMContext$p(Lcom/android/launcher/BreenoSkillAction;)Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/android/common/util/LauncherModeUtil;->notifySceneModeToChangeState(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/launcher/BreenoSkillAction$switchLauncherModel$2;->invoke(Z)V

    sget-object p0, Ly2/p;->a:Ly2/p;

    return-object p0
.end method

.method public final invoke(Z)V
    .registers 6

    const/4 v0, 0x0

    if-eqz p1, :cond_12

    iget-object p1, p0, Lcom/android/launcher/BreenoSkillAction$switchLauncherModel$2;->$handler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/android/launcher/BreenoSkillAction$switchLauncherModel$2;->this$0:Lcom/android/launcher/BreenoSkillAction;

    new-instance v1, Lcom/android/launcher/i;

    invoke-direct {v1, p0, v0}, Lcom/android/launcher/i;-><init>(Lcom/android/launcher/BreenoSkillAction;I)V

    const-wide/16 v2, 0x3e8

    invoke-virtual {p1, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_22

    :cond_12
    iget-object p0, p0, Lcom/android/launcher/BreenoSkillAction$switchLauncherModel$2;->this$0:Lcom/android/launcher/BreenoSkillAction;

    invoke-static {p0}, Lcom/android/launcher/BreenoSkillAction;->access$getMContext$p(Lcom/android/launcher/BreenoSkillAction;)Landroid/content/Context;

    move-result-object p0

    const p1, 0x7f1202b0

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    :goto_22
    return-void
.end method
