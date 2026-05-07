.class public final Lcom/oplus/quickstep/taskviewremoteanim/TaskViewManager$Companion;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/quickstep/taskviewremoteanim/TaskViewManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 2

    invoke-direct {p0}, Lcom/oplus/quickstep/taskviewremoteanim/TaskViewManager$Companion;-><init>()V

    return-void
.end method

.method public static synthetic getTASK_VIEW_ALPHA$annotations()V
    .registers 0
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    return-void
.end method


# virtual methods
.method public final getTASK_VIEW_ALPHA()Landroid/util/FloatProperty;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/FloatProperty<",
            "Lcom/oplus/quickstep/taskviewremoteanim/view/LauncherTaskView;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/oplus/quickstep/taskviewremoteanim/TaskViewManager;->access$getTASK_VIEW_ALPHA$cp()Landroid/util/FloatProperty;

    move-result-object p0

    return-object p0
.end method
