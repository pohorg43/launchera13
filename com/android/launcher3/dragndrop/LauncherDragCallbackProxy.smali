.class public final Lcom/android/launcher3/dragndrop/LauncherDragCallbackProxy;
.super Lcom/heytap/assist/ILauncherDragCallback$Stub;
.source ""

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/dragndrop/LauncherDragCallbackProxy$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/android/launcher3/dragndrop/LauncherDragCallbackProxy$Companion;

.field public static final MSG_ADD_CARD_TO_LAUNCHER:I = 0xe

.field public static final MSG_DRAG_STATE_END:I = 0xc

.field public static final MSG_DRAG_STATE_START:I = 0xa

.field public static final MSG_EDIT_STATE_CHANGED:I = 0xb

.field public static final MSG_SYNC_EVENT:I = 0xd

.field public static final TAG:Ljava/lang/String; = "LauncherDragCallbackImp"


# instance fields
.field private callBackImpl:Lcom/android/launcher3/dragndrop/IDragCallback;

.field private final mUIHandler:Landroid/os/Handler;


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/android/launcher3/dragndrop/LauncherDragCallbackProxy$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/launcher3/dragndrop/LauncherDragCallbackProxy$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/android/launcher3/dragndrop/LauncherDragCallbackProxy;->Companion:Lcom/android/launcher3/dragndrop/LauncherDragCallbackProxy$Companion;

    return-void
.end method

.method public constructor <init>(Lcom/android/launcher3/dragndrop/IDragCallback;)V
    .registers 3

    invoke-direct {p0}, Lcom/heytap/assist/ILauncherDragCallback$Stub;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/dragndrop/LauncherDragCallbackProxy;->callBackImpl:Lcom/android/launcher3/dragndrop/IDragCallback;

    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object p1, p0, Lcom/android/launcher3/dragndrop/LauncherDragCallbackProxy;->mUIHandler:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public addCardToLauncher(I)V
    .registers 4

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "addCardToLauncher, cardType = "

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "LauncherDragCallbackImp"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/launcher3/dragndrop/LauncherDragCallbackProxy;->mUIHandler:Landroid/os/Handler;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/16 v0, 0xe

    invoke-static {p0, v0, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public final getCallBackImpl()Lcom/android/launcher3/dragndrop/IDragCallback;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/dragndrop/LauncherDragCallbackProxy;->callBackImpl:Lcom/android/launcher3/dragndrop/IDragCallback;

    return-object p0
.end method

.method public final getMUIHandler()Landroid/os/Handler;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/dragndrop/LauncherDragCallbackProxy;->mUIHandler:Landroid/os/Handler;

    return-object p0
.end method

.method public getSingleCardNum(I)I
    .registers 2
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    iget-object p0, p0, Lcom/android/launcher3/dragndrop/LauncherDragCallbackProxy;->callBackImpl:Lcom/android/launcher3/dragndrop/IDragCallback;

    if-nez p0, :cond_6

    const/4 p0, 0x0

    goto :goto_a

    :cond_6
    invoke-interface {p0, p1}, Lcom/android/launcher3/dragndrop/IDragCallback;->getSingleCardNum(I)I

    move-result p0

    :goto_a
    return p0
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .registers 9

    iget-object v0, p0, Lcom/android/launcher3/dragndrop/LauncherDragCallbackProxy;->callBackImpl:Lcom/android/launcher3/dragndrop/IDragCallback;

    const-string v1, "LauncherDragCallbackImp"

    const/4 v2, 0x0

    if-nez v0, :cond_40

    const-string v0, "handleMessage, callBackImpl is null. p.what = "

    invoke-static {v0}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    if-nez p1, :cond_11

    move-object v3, v2

    goto :goto_17

    :cond_11
    iget v3, p1, Landroid/os/Message;->what:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    :goto_17
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string/jumbo v3, "this = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " , DIFManager.callbackImpl = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/android/launcher3/dragndrop/DragInterfaceManager;->getInstance()Lcom/android/launcher3/dragndrop/DragInterfaceManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/launcher3/dragndrop/DragInterfaceManager;->getDragCallbackProxy()Lcom/android/launcher3/dragndrop/LauncherDragCallbackProxy;

    move-result-object v3

    if-nez v3, :cond_34

    move-object v3, v2

    goto :goto_36

    :cond_34
    iget-object v3, v3, Lcom/android/launcher3/dragndrop/LauncherDragCallbackProxy;->callBackImpl:Lcom/android/launcher3/dragndrop/IDragCallback;

    :goto_36
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_40
    if-nez p1, :cond_44

    move-object v0, v2

    goto :goto_4a

    :cond_44
    iget v0, p1, Landroid/os/Message;->what:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    :goto_4a
    const/16 v3, 0xa

    const-string/jumbo v4, "null cannot be cast to non-null type kotlin.String"

    const/4 v5, 0x1

    if-nez v0, :cond_53

    goto :goto_71

    :cond_53
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-ne v6, v3, :cond_71

    iget-object p0, p0, Lcom/android/launcher3/dragndrop/LauncherDragCallbackProxy;->callBackImpl:Lcom/android/launcher3/dragndrop/IDragCallback;

    if-nez p0, :cond_5f

    goto/16 :goto_10a

    :cond_5f
    sget-object v0, Lcom/android/launcher3/dragndrop/DragCardInfo;->Companion:Lcom/android/launcher3/dragndrop/DragCardInfo$Companion;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-static {p1, v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/dragndrop/DragCardInfo$Companion;->convertDragInfo(Ljava/lang/String;)Lcom/android/launcher3/dragndrop/DragCardInfo;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/android/launcher3/dragndrop/IDragCallback;->onStartWidgetDrag(Lcom/android/launcher3/dragndrop/DragCardInfo;)V

    goto/16 :goto_10a

    :cond_71
    :goto_71
    const/16 v3, 0xb

    if-nez v0, :cond_76

    goto :goto_95

    :cond_76
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-ne v6, v3, :cond_95

    iget-object p0, p0, Lcom/android/launcher3/dragndrop/LauncherDragCallbackProxy;->callBackImpl:Lcom/android/launcher3/dragndrop/IDragCallback;

    if-nez p0, :cond_82

    goto/16 :goto_10a

    :cond_82
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    const-string/jumbo v0, "null cannot be cast to non-null type kotlin.Boolean"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-interface {p0, p1}, Lcom/android/launcher3/dragndrop/IDragCallback;->onEditStateChanged(Z)V

    goto/16 :goto_10a

    :cond_95
    :goto_95
    const/16 v3, 0xc

    if-nez v0, :cond_9a

    goto :goto_b6

    :cond_9a
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-ne v6, v3, :cond_b6

    iget-object p0, p0, Lcom/android/launcher3/dragndrop/LauncherDragCallbackProxy;->callBackImpl:Lcom/android/launcher3/dragndrop/IDragCallback;

    if-nez p0, :cond_a5

    goto :goto_10a

    :cond_a5
    sget-object v0, Lcom/android/launcher3/dragndrop/DragResultInfo;->Companion:Lcom/android/launcher3/dragndrop/DragResultInfo$Companion;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-static {p1, v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/dragndrop/DragResultInfo$Companion;->convertResultInfo(Ljava/lang/String;)Lcom/android/launcher3/dragndrop/DragResultInfo;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/android/launcher3/dragndrop/IDragCallback;->onWidgetDragEnd(Lcom/android/launcher3/dragndrop/DragResultInfo;)V

    goto :goto_10a

    :cond_b6
    :goto_b6
    const/16 v3, 0xd

    const-string/jumbo v4, "null cannot be cast to non-null type kotlin.Int"

    if-nez v0, :cond_be

    goto :goto_d8

    :cond_be
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-ne v6, v3, :cond_d8

    iget-object p0, p0, Lcom/android/launcher3/dragndrop/LauncherDragCallbackProxy;->callBackImpl:Lcom/android/launcher3/dragndrop/IDragCallback;

    if-nez p0, :cond_c9

    goto :goto_10a

    :cond_c9
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-static {p1, v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-interface {p0, p1}, Lcom/android/launcher3/dragndrop/IDragCallback;->onSyncEvent(I)V

    goto :goto_10a

    :cond_d8
    :goto_d8
    const/16 v3, 0xe

    if-nez v0, :cond_dd

    goto :goto_f7

    :cond_dd
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v3, :cond_f7

    iget-object p0, p0, Lcom/android/launcher3/dragndrop/LauncherDragCallbackProxy;->callBackImpl:Lcom/android/launcher3/dragndrop/IDragCallback;

    if-nez p0, :cond_e8

    goto :goto_10a

    :cond_e8
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-static {p1, v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-interface {p0, p1}, Lcom/android/launcher3/dragndrop/IDragCallback;->addCardToLauncher(I)V

    goto :goto_10a

    :cond_f7
    :goto_f7
    if-nez p1, :cond_fa

    goto :goto_100

    :cond_fa
    iget p0, p1, Landroid/os/Message;->what:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    :goto_100
    const-string p0, "Undefined msg what = "

    invoke-static {p0, v2}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v5, 0x0

    :goto_10a
    return v5
.end method

.method public onEditStateChanged(Z)V
    .registers 3

    iget-object p0, p0, Lcom/android/launcher3/dragndrop/LauncherDragCallbackProxy;->mUIHandler:Landroid/os/Handler;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const/16 v0, 0xb

    invoke-static {p0, v0, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public onSyncEvent(I)V
    .registers 4

    const-string/jumbo v0, "onSyncEvent eventId = "

    const-string v1, "LauncherDragCallbackImp"

    invoke-static {p1, v0, v1}, Lcom/android/common/config/f;->a(ILjava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/launcher3/dragndrop/LauncherDragCallbackProxy;->mUIHandler:Landroid/os/Handler;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/16 v0, 0xd

    invoke-static {p0, v0, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public onWidgetDragEnd(Ljava/lang/String;)V
    .registers 3

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    :cond_7
    iget-object p0, p0, Lcom/android/launcher3/dragndrop/LauncherDragCallbackProxy;->mUIHandler:Landroid/os/Handler;

    const/16 v0, 0xc

    invoke-static {p0, v0, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public requestBindAppWidgetPermission(Ljava/lang/String;)Z
    .registers 4
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    return v1

    :cond_8
    iget-object p0, p0, Lcom/android/launcher3/dragndrop/LauncherDragCallbackProxy;->callBackImpl:Lcom/android/launcher3/dragndrop/IDragCallback;

    if-nez p0, :cond_d

    goto :goto_11

    :cond_d
    invoke-interface {p0, p1}, Lcom/android/launcher3/dragndrop/IDragCallback;->requestBindAppWidgetPermission(Ljava/lang/String;)Z

    move-result v1

    :goto_11
    return v1
.end method

.method public sendCardInfoList(Ljava/lang/String;)V
    .registers 3
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    :cond_7
    iget-object p0, p0, Lcom/android/launcher3/dragndrop/LauncherDragCallbackProxy;->callBackImpl:Lcom/android/launcher3/dragndrop/IDragCallback;

    if-nez p0, :cond_c

    goto :goto_15

    :cond_c
    sget-object v0, Lcom/android/launcher3/dragndrop/CardInfoList;->Companion:Lcom/android/launcher3/dragndrop/CardInfoList$Companion;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/dragndrop/CardInfoList$Companion;->convertToCardInfoList(Ljava/lang/String;)Lcom/android/launcher3/dragndrop/CardInfoList;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/android/launcher3/dragndrop/IDragCallback;->receiveCardInfoList(Lcom/android/launcher3/dragndrop/CardInfoList;)V

    :goto_15
    return-void
.end method

.method public final setCallBackImpl(Lcom/android/launcher3/dragndrop/IDragCallback;)V
    .registers 2

    iput-object p1, p0, Lcom/android/launcher3/dragndrop/LauncherDragCallbackProxy;->callBackImpl:Lcom/android/launcher3/dragndrop/IDragCallback;

    return-void
.end method

.method public startWidgetDrag(Ljava/lang/String;)V
    .registers 3

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    :cond_7
    iget-object p0, p0, Lcom/android/launcher3/dragndrop/LauncherDragCallbackProxy;->mUIHandler:Landroid/os/Handler;

    const/16 v0, 0xa

    invoke-static {p0, v0, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method
