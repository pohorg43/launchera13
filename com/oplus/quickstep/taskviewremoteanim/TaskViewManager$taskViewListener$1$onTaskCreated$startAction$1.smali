.class final Lcom/oplus/quickstep/taskviewremoteanim/TaskViewManager$taskViewListener$1$onTaskCreated$startAction$1;
.super Lkotlin/jvm/internal/Lambda;
.source ""

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/quickstep/taskviewremoteanim/TaskViewManager$taskViewListener$1;->onTaskCreated(ILandroid/content/ComponentName;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Landroid/animation/Animator;",
        "Ly2/p;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/oplus/quickstep/taskviewremoteanim/TaskViewManager$taskViewListener$1$onTaskCreated$startAction$1;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/oplus/quickstep/taskviewremoteanim/TaskViewManager$taskViewListener$1$onTaskCreated$startAction$1;

    invoke-direct {v0}, Lcom/oplus/quickstep/taskviewremoteanim/TaskViewManager$taskViewListener$1$onTaskCreated$startAction$1;-><init>()V

    sput-object v0, Lcom/oplus/quickstep/taskviewremoteanim/TaskViewManager$taskViewListener$1$onTaskCreated$startAction$1;->INSTANCE:Lcom/oplus/quickstep/taskviewremoteanim/TaskViewManager$taskViewListener$1$onTaskCreated$startAction$1;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    check-cast p1, Landroid/animation/Animator;

    invoke-virtual {p0, p1}, Lcom/oplus/quickstep/taskviewremoteanim/TaskViewManager$taskViewListener$1$onTaskCreated$startAction$1;->invoke(Landroid/animation/Animator;)V

    sget-object p0, Ly2/p;->a:Ly2/p;

    return-object p0
.end method

.method public final invoke(Landroid/animation/Animator;)V
    .registers 3

    const-string p0, "$noName_0"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "TaskView"

    const-string p1, "TaskViewManager"

    const-string v0, "onTaskCreated: start task animation , so do start callback immediately"

    invoke-static {p0, p1, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
