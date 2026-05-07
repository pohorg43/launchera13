.class public final Lcom/oplus/quickstep/receiver/DragModeReceiver;
.super Landroid/content/BroadcastReceiver;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/quickstep/receiver/DragModeReceiver$Companion;
    }
.end annotation


# static fields
.field private static final Companion:Lcom/oplus/quickstep/receiver/DragModeReceiver$Companion;

.field private static final EXIT_DRAG_WINDOW_ACTION:Ljava/lang/String; = "com.oplus.intent.action.EXIT_DRAG_WINDOW"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final SUCCESS_DRAG_WINDOW_ACTION:Ljava/lang/String; = "com.oplus.intent.action.SUCCESS_DRAG_WINDOW"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# instance fields
.field private mActivityContext:Lcom/android/launcher3/views/ActivityContext;

.field private final mDragIntentFilter:Landroid/content/IntentFilter;


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/oplus/quickstep/receiver/DragModeReceiver$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/oplus/quickstep/receiver/DragModeReceiver$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/oplus/quickstep/receiver/DragModeReceiver;->Companion:Lcom/oplus/quickstep/receiver/DragModeReceiver$Companion;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "com.oplus.intent.action.EXIT_DRAG_WINDOW"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.oplus.intent.action.SUCCESS_DRAG_WINDOW"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/oplus/quickstep/receiver/DragModeReceiver;->mDragIntentFilter:Landroid/content/IntentFilter;

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 5

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "intent"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string p2, "com.oplus.intent.action.EXIT_DRAG_WINDOW"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    const/16 v0, 0x800

    const/4 v1, 0x0

    if-eqz p2, :cond_28

    sget-object p1, Lcom/oplus/quickstep/rapidreaction/utils/RapidReactionUtils;->INSTANCE:Lcom/oplus/quickstep/rapidreaction/utils/RapidReactionUtils;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcom/oplus/quickstep/rapidreaction/utils/RapidReactionUtils;->updateSingleHandState(Z)V

    iget-object p0, p0, Lcom/oplus/quickstep/receiver/DragModeReceiver;->mActivityContext:Lcom/android/launcher3/views/ActivityContext;

    if-nez p0, :cond_24

    goto :goto_3d

    :cond_24
    invoke-static {p0, v1, v0}, Lcom/android/launcher3/AbstractFloatingView;->closeOpenViews(Lcom/android/launcher3/views/ActivityContext;ZI)V

    goto :goto_3d

    :cond_28
    const-string p2, "com.oplus.intent.action.SUCCESS_DRAG_WINDOW"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3d

    sget-object p1, Lcom/oplus/quickstep/rapidreaction/utils/RapidReactionUtils;->INSTANCE:Lcom/oplus/quickstep/rapidreaction/utils/RapidReactionUtils;

    invoke-virtual {p1, v1}, Lcom/oplus/quickstep/rapidreaction/utils/RapidReactionUtils;->updateSingleHandState(Z)V

    iget-object p0, p0, Lcom/oplus/quickstep/receiver/DragModeReceiver;->mActivityContext:Lcom/android/launcher3/views/ActivityContext;

    if-nez p0, :cond_3a

    goto :goto_3d

    :cond_3a
    invoke-static {p0, v1, v0}, Lcom/android/launcher3/AbstractFloatingView;->closeOpenViews(Lcom/android/launcher3/views/ActivityContext;ZI)V

    :cond_3d
    :goto_3d
    return-void
.end method

.method public final register(Lcom/android/launcher3/views/ActivityContext;Landroid/content/Context;)V
    .registers 4

    const-string v0, "activityContext"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "context"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/oplus/quickstep/receiver/DragModeReceiver;->mActivityContext:Lcom/android/launcher3/views/ActivityContext;

    iget-object p1, p0, Lcom/oplus/quickstep/receiver/DragModeReceiver;->mDragIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {p2, p0, p1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method public final unregister(Landroid/content/Context;)V
    .registers 3

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/oplus/quickstep/receiver/DragModeReceiver;->mActivityContext:Lcom/android/launcher3/views/ActivityContext;

    return-void
.end method
