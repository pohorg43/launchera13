.class public final Lcom/android/common/debug/LauncherAtom$ContainerInfo;
.super Lcom/google/protobuf/nano/MessageNano;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/common/debug/LauncherAtom;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ContainerInfo"
.end annotation


# static fields
.field public static final ALL_APPS_CONTAINER_FIELD_NUMBER:I = 0x4

.field public static final FOLDER_FIELD_NUMBER:I = 0x3

.field public static final HOTSEAT_FIELD_NUMBER:I = 0x2

.field public static final PREDICTED_HOTSEAT_CONTAINER_FIELD_NUMBER:I = 0xa

.field public static final PREDICTION_CONTAINER_FIELD_NUMBER:I = 0x6

.field public static final SEARCH_RESULT_CONTAINER_FIELD_NUMBER:I = 0x7

.field public static final SETTINGS_CONTAINER_FIELD_NUMBER:I = 0x9

.field public static final SHORTCUTS_CONTAINER_FIELD_NUMBER:I = 0x8

.field public static final TASK_SWITCHER_CONTAINER_FIELD_NUMBER:I = 0xb

.field public static final WIDGETS_CONTAINER_FIELD_NUMBER:I = 0x5

.field public static final WORKSPACE_FIELD_NUMBER:I = 0x1

.field private static volatile _emptyArray:[Lcom/android/common/debug/LauncherAtom$ContainerInfo;


# instance fields
.field private containerCase_:I

.field private container_:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lcom/google/protobuf/nano/MessageNano;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/common/debug/LauncherAtom$ContainerInfo;->containerCase_:I

    invoke-virtual {p0}, Lcom/android/common/debug/LauncherAtom$ContainerInfo;->clear()Lcom/android/common/debug/LauncherAtom$ContainerInfo;

    return-void
.end method

.method public static emptyArray()[Lcom/android/common/debug/LauncherAtom$ContainerInfo;
    .registers 2

    sget-object v0, Lcom/android/common/debug/LauncherAtom$ContainerInfo;->_emptyArray:[Lcom/android/common/debug/LauncherAtom$ContainerInfo;

    if-nez v0, :cond_15

    sget-object v0, Lcom/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v0

    :try_start_7
    sget-object v1, Lcom/android/common/debug/LauncherAtom$ContainerInfo;->_emptyArray:[Lcom/android/common/debug/LauncherAtom$ContainerInfo;

    if-nez v1, :cond_10

    const/4 v1, 0x0

    new-array v1, v1, [Lcom/android/common/debug/LauncherAtom$ContainerInfo;

    sput-object v1, Lcom/android/common/debug/LauncherAtom$ContainerInfo;->_emptyArray:[Lcom/android/common/debug/LauncherAtom$ContainerInfo;

    :cond_10
    monitor-exit v0

    goto :goto_15

    :catchall_12
    move-exception v1

    monitor-exit v0
    :try_end_14
    .catchall {:try_start_7 .. :try_end_14} :catchall_12

    throw v1

    :cond_15
    :goto_15
    sget-object v0, Lcom/android/common/debug/LauncherAtom$ContainerInfo;->_emptyArray:[Lcom/android/common/debug/LauncherAtom$ContainerInfo;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/common/debug/LauncherAtom$ContainerInfo;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Lcom/android/common/debug/LauncherAtom$ContainerInfo;

    invoke-direct {v0}, Lcom/android/common/debug/LauncherAtom$ContainerInfo;-><init>()V

    invoke-virtual {v0, p0}, Lcom/android/common/debug/LauncherAtom$ContainerInfo;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/common/debug/LauncherAtom$ContainerInfo;

    move-result-object p0

    return-object p0
.end method

.method public static parseFrom([B)Lcom/android/common/debug/LauncherAtom$ContainerInfo;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    new-instance v0, Lcom/android/common/debug/LauncherAtom$ContainerInfo;

    invoke-direct {v0}, Lcom/android/common/debug/LauncherAtom$ContainerInfo;-><init>()V

    invoke-static {v0, p0}, Lcom/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/protobuf/nano/MessageNano;[B)Lcom/google/protobuf/nano/MessageNano;

    move-result-object p0

    check-cast p0, Lcom/android/common/debug/LauncherAtom$ContainerInfo;

    return-object p0
.end method


# virtual methods
.method public clear()Lcom/android/common/debug/LauncherAtom$ContainerInfo;
    .registers 2

    invoke-virtual {p0}, Lcom/android/common/debug/LauncherAtom$ContainerInfo;->clearContainer()Lcom/android/common/debug/LauncherAtom$ContainerInfo;

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/protobuf/nano/MessageNano;->cachedSize:I

    return-object p0
.end method

.method public clearContainer()Lcom/android/common/debug/LauncherAtom$ContainerInfo;
    .registers 2

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/common/debug/LauncherAtom$ContainerInfo;->containerCase_:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/common/debug/LauncherAtom$ContainerInfo;->container_:Ljava/lang/Object;

    return-object p0
.end method

.method public computeSerializedSize()I
    .registers 4

    invoke-super {p0}, Lcom/google/protobuf/nano/MessageNano;->computeSerializedSize()I

    move-result v0

    iget v1, p0, Lcom/android/common/debug/LauncherAtom$ContainerInfo;->containerCase_:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_12

    iget-object v1, p0, Lcom/android/common/debug/LauncherAtom$ContainerInfo;->container_:Ljava/lang/Object;

    check-cast v1, Lcom/google/protobuf/nano/MessageNano;

    invoke-static {v2, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_12
    iget v1, p0, Lcom/android/common/debug/LauncherAtom$ContainerInfo;->containerCase_:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_20

    iget-object v1, p0, Lcom/android/common/debug/LauncherAtom$ContainerInfo;->container_:Ljava/lang/Object;

    check-cast v1, Lcom/google/protobuf/nano/MessageNano;

    invoke-static {v2, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_20
    iget v1, p0, Lcom/android/common/debug/LauncherAtom$ContainerInfo;->containerCase_:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_2e

    iget-object v1, p0, Lcom/android/common/debug/LauncherAtom$ContainerInfo;->container_:Ljava/lang/Object;

    check-cast v1, Lcom/google/protobuf/nano/MessageNano;

    invoke-static {v2, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_2e
    iget v1, p0, Lcom/android/common/debug/LauncherAtom$ContainerInfo;->containerCase_:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_3c

    iget-object v1, p0, Lcom/android/common/debug/LauncherAtom$ContainerInfo;->container_:Ljava/lang/Object;

    check-cast v1, Lcom/google/protobuf/nano/MessageNano;

    invoke-static {v2, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_3c
    iget v1, p0, Lcom/android/common/debug/LauncherAtom$ContainerInfo;->containerCase_:I

    const/4 v2, 0x5

    if-ne v1, v2, :cond_4a

    iget-object v1, p0, Lcom/android/common/debug/LauncherAtom$ContainerInfo;->container_:Ljava/lang/Object;

    check-cast v1, Lcom/google/protobuf/nano/MessageNano;

    invoke-static {v2, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_4a
    iget v1, p0, Lcom/android/common/debug/LauncherAtom$ContainerInfo;->containerCase_:I

    const/4 v2, 0x6

    if-ne v1, v2, :cond_58

    iget-object v1, p0, Lcom/android/common/debug/LauncherAtom$ContainerInfo;->container_:Ljava/lang/Object;

    check-cast v1, Lcom/google/protobuf/nano/MessageNano;

    invoke-static {v2, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_58
    iget v1, p0, Lcom/android/common/debug/LauncherAtom$ContainerInfo;->containerCase_:I

    const/4 v2, 0x7

    if-ne v1, v2, :cond_66

    iget-object v1, p0, Lcom/android/common/debug/LauncherAtom$ContainerInfo;->container_:Ljava/lang/Object;

    check-cast v1, Lcom/google/protobuf/nano/MessageNano;

    invoke-static {v2, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_66
    iget v1, p0, Lcom/android/common/debug/LauncherAtom$ContainerInfo;->containerCase_:I

    const/16 v2, 0x8

    if-ne v1, v2, :cond_75

    iget-object v1, p0, Lcom/android/common/debug/LauncherAtom$ContainerInfo;->container_:Ljava/lang/Object;

    check-cast v1, Lcom/google/protobuf/nano/MessageNano;

    invoke-static {v2, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_75
    iget v1, p0, Lcom/android/common/debug/LauncherAtom$ContainerInfo;->containerCase_:I

    const/16 v2, 0x9

    if-ne v1, v2, :cond_84

    iget-object v1, p0, Lcom/android/common/debug/LauncherAtom$ContainerInfo;->container_:Ljava/lang/Object;

    check-cast v1, Lcom/google/protobuf/nano/MessageNano;

    invoke-static {v2, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_84
    iget v1, p0, Lcom/android/common/debug/LauncherAtom$ContainerInfo;->containerCase_:I

    const/16 v2, 0xa

    if-ne v1, v2, :cond_93

    iget-object v1, p0, Lcom/android/common/debug/LauncherAtom$ContainerInfo;->container_:Ljava/lang/Object;

    check-cast v1, Lcom/google/protobuf/nano/MessageNano;

    invoke-static {v2, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_93
    iget v1, p0, Lcom/android/common/debug/LauncherAtom$ContainerInfo;->containerCase_:I

    const/16 v2, 0xb

    if-ne v1, v2, :cond_a2

    iget-object p0, p0, Lcom/android/common/debug/LauncherAtom$ContainerInfo;->container_:Ljava/lang/Object;

    check-cast p0, Lcom/google/protobuf/nano/MessageNano;

    invoke-static {v2, p0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result p0

    add-int/2addr v0, p0

    :cond_a2
    return v0
.end method

.method public getAllAppsContainer()Lcom/android/common/debug/LauncherAtom$AllAppsContainer;
    .registers 3

    iget v0, p0, Lcom/android/common/debug/LauncherAtom$ContainerInfo;->containerCase_:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_a

    iget-object p0, p0, Lcom/android/common/debug/LauncherAtom$ContainerInfo;->container_:Ljava/lang/Object;

    check-cast p0, Lcom/android/common/debug/LauncherAtom$AllAppsContainer;

    return-object p0

    :cond_a
    const/4 p0, 0x0

    return-object p0
.end method

.method public getContainerCase()I
    .registers 1

    iget p0, p0, Lcom/android/common/debug/LauncherAtom$ContainerInfo;->containerCase_:I

    return p0
.end method

.method public getFolder()Lcom/android/common/debug/LauncherAtom$FolderContainer;
    .registers 3

    iget v0, p0, Lcom/android/common/debug/LauncherAtom$ContainerInfo;->containerCase_:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_a

    iget-object p0, p0, Lcom/android/common/debug/LauncherAtom$ContainerInfo;->container_:Ljava/lang/Object;

    check-cast p0, Lcom/android/common/debug/LauncherAtom$FolderContainer;

    return-object p0

    :cond_a
    const/4 p0, 0x0

    return-object p0
.end method

.method public getHotseat()Lcom/android/common/debug/LauncherAtom$HotseatContainer;
    .registers 3

    iget v0, p0, Lcom/android/common/debug/LauncherAtom$ContainerInfo;->containerCase_:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_a

    iget-object p0, p0, Lcom/android/common/debug/LauncherAtom$ContainerInfo;->container_:Ljava/lang/Object;

    check-cast p0, Lcom/android/common/debug/LauncherAtom$HotseatContainer;

    return-object p0

    :cond_a
    const/4 p0, 0x0

    return-object p0
.end method

.method public getPredictedHotseatContainer()Lcom/android/common/debug/LauncherAtom$PredictedHotseatContainer;
    .registers 3

    iget v0, p0, Lcom/android/common/debug/LauncherAtom$ContainerInfo;->containerCase_:I

    const/16 v1, 0xa

    if-ne v0, v1, :cond_b

    iget-object p0, p0, Lcom/android/common/debug/LauncherAtom$ContainerInfo;->container_:Ljava/lang/Object;

    check-cast p0, Lcom/android/common/debug/LauncherAtom$PredictedHotseatContainer;

    return-object p0

    :cond_b
    const/4 p0, 0x0

    return-object p0
.end method

.method public getPredictionContainer()Lcom/android/common/debug/LauncherAtom$PredictionContainer;
    .registers 3

    iget v0, p0, Lcom/android/common/debug/LauncherAtom$ContainerInfo;->containerCase_:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_a

    iget-object p0, p0, Lcom/android/common/debug/LauncherAtom$ContainerInfo;->container_:Ljava/lang/Object;

    check-cast p0, Lcom/android/common/debug/LauncherAtom$PredictionContainer;

    return-object p0

    :cond_a
    const/4 p0, 0x0

    return-object p0
.end method

.method public getSearchResultContainer()Lcom/android/common/debug/LauncherAtom$SearchResultContainer;
    .registers 3

    iget v0, p0, Lcom/android/common/debug/LauncherAtom$ContainerInfo;->containerCase_:I

    const/4 v1, 0x7

    if-ne v0, v1, :cond_a

    iget-object p0, p0, Lcom/android/common/debug/LauncherAtom$ContainerInfo;->container_:Ljava/lang/Object;

    check-cast p0, Lcom/android/common/debug/LauncherAtom$SearchResultContainer;

    return-object p0

    :cond_a
    const/4 p0, 0x0

    return-object p0
.end method

.method public getSettingsContainer()Lcom/android/common/debug/LauncherAtom$SettingsContainer;
    .registers 3

    iget v0, p0, Lcom/android/common/debug/LauncherAtom$ContainerInfo;->containerCase_:I

    const/16 v1, 0x9

    if-ne v0, v1, :cond_b

    iget-object p0, p0, Lcom/android/common/debug/LauncherAtom$ContainerInfo;->container_:Ljava/lang/Object;

    check-cast p0, Lcom/android/common/debug/LauncherAtom$SettingsContainer;

    return-object p0

    :cond_b
    const/4 p0, 0x0

    return-object p0
.end method

.method public getShortcutsContainer()Lcom/android/common/debug/LauncherAtom$ShortcutsContainer;
    .registers 3

    iget v0, p0, Lcom/android/common/debug/LauncherAtom$ContainerInfo;->containerCase_:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_b

    iget-object p0, p0, Lcom/android/common/debug/LauncherAtom$ContainerInfo;->container_:Ljava/lang/Object;

    check-cast p0, Lcom/android/common/debug/LauncherAtom$ShortcutsContainer;

    return-object p0

    :cond_b
    const/4 p0, 0x0

    return-object p0
.end method

.method public getTaskSwitcherContainer()Lcom/android/common/debug/LauncherAtom$TaskSwitcherContainer;
    .registers 3

    iget v0, p0, Lcom/android/common/debug/LauncherAtom$ContainerInfo;->containerCase_:I

    const/16 v1, 0xb

    if-ne v0, v1, :cond_b

    iget-object p0, p0, Lcom/android/common/debug/LauncherAtom$ContainerInfo;->container_:Ljava/lang/Object;

    check-cast p0, Lcom/android/common/debug/LauncherAtom$TaskSwitcherContainer;

    return-object p0

    :cond_b
    const/4 p0, 0x0

    return-object p0
.end method

.method public getWidgetsContainer()Lcom/android/common/debug/LauncherAtom$WidgetsContainer;
    .registers 3

    iget v0, p0, Lcom/android/common/debug/LauncherAtom$ContainerInfo;->containerCase_:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_a

    iget-object p0, p0, Lcom/android/common/debug/LauncherAtom$ContainerInfo;->container_:Ljava/lang/Object;

    check-cast p0, Lcom/android/common/debug/LauncherAtom$WidgetsContainer;

    return-object p0

    :cond_a
    const/4 p0, 0x0

    return-object p0
.end method

.method public getWorkspace()Lcom/android/common/debug/LauncherAtom$WorkspaceContainer;
    .registers 3

    iget v0, p0, Lcom/android/common/debug/LauncherAtom$ContainerInfo;->containerCase_:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_a

    iget-object p0, p0, Lcom/android/common/debug/LauncherAtom$ContainerInfo;->container_:Ljava/lang/Object;

    check-cast p0, Lcom/android/common/debug/LauncherAtom$WorkspaceContainer;

    return-object p0

    :cond_a
    const/4 p0, 0x0

    return-object p0
.end method

.method public hasAllAppsContainer()Z
    .registers 2

    iget p0, p0, Lcom/android/common/debug/LauncherAtom$ContainerInfo;->containerCase_:I

    const/4 v0, 0x4

    if-ne p0, v0, :cond_7

    const/4 p0, 0x1

    goto :goto_8

    :cond_7
    const/4 p0, 0x0

    :goto_8
    return p0
.end method

.method public hasFolder()Z
    .registers 2

    iget p0, p0, Lcom/android/common/debug/LauncherAtom$ContainerInfo;->containerCase_:I

    const/4 v0, 0x3

    if-ne p0, v0, :cond_7

    const/4 p0, 0x1

    goto :goto_8

    :cond_7
    const/4 p0, 0x0

    :goto_8
    return p0
.end method

.method public hasHotseat()Z
    .registers 2

    iget p0, p0, Lcom/android/common/debug/LauncherAtom$ContainerInfo;->containerCase_:I

    const/4 v0, 0x2

    if-ne p0, v0, :cond_7

    const/4 p0, 0x1

    goto :goto_8

    :cond_7
    const/4 p0, 0x0

    :goto_8
    return p0
.end method

.method public hasPredictedHotseatContainer()Z
    .registers 2

    iget p0, p0, Lcom/android/common/debug/LauncherAtom$ContainerInfo;->containerCase_:I

    const/16 v0, 0xa

    if-ne p0, v0, :cond_8

    const/4 p0, 0x1

    goto :goto_9

    :cond_8
    const/4 p0, 0x0

    :goto_9
    return p0
.end method

.method public hasPredictionContainer()Z
    .registers 2

    iget p0, p0, Lcom/android/common/debug/LauncherAtom$ContainerInfo;->containerCase_:I

    const/4 v0, 0x6

    if-ne p0, v0, :cond_7

    const/4 p0, 0x1

    goto :goto_8

    :cond_7
    const/4 p0, 0x0

    :goto_8
    return p0
.end method

.method public hasSearchResultContainer()Z
    .registers 2

    iget p0, p0, Lcom/android/common/debug/LauncherAtom$ContainerInfo;->containerCase_:I

    const/4 v0, 0x7

    if-ne p0, v0, :cond_7

    const/4 p0, 0x1

    goto :goto_8

    :cond_7
    const/4 p0, 0x0

    :goto_8
    return p0
.end method

.method public hasSettingsContainer()Z
    .registers 2

    iget p0, p0, Lcom/android/common/debug/LauncherAtom$ContainerInfo;->containerCase_:I

    const/16 v0, 0x9

    if-ne p0, v0, :cond_8

    const/4 p0, 0x1

    goto :goto_9

    :cond_8
    const/4 p0, 0x0

    :goto_9
    return p0
.end method

.method public hasShortcutsContainer()Z
    .registers 2

    iget p0, p0, Lcom/android/common/debug/LauncherAtom$ContainerInfo;->containerCase_:I

    const/16 v0, 0x8

    if-ne p0, v0, :cond_8

    const/4 p0, 0x1

    goto :goto_9

    :cond_8
    const/4 p0, 0x0

    :goto_9
    return p0
.end method

.method public hasTaskSwitcherContainer()Z
    .registers 2

    iget p0, p0, Lcom/android/common/debug/LauncherAtom$ContainerInfo;->containerCase_:I

    const/16 v0, 0xb

    if-ne p0, v0, :cond_8

    const/4 p0, 0x1

    goto :goto_9

    :cond_8
    const/4 p0, 0x0

    :goto_9
    return p0
.end method

.method public hasWidgetsContainer()Z
    .registers 2

    iget p0, p0, Lcom/android/common/debug/LauncherAtom$ContainerInfo;->containerCase_:I

    const/4 v0, 0x5

    if-ne p0, v0, :cond_7

    const/4 p0, 0x1

    goto :goto_8

    :cond_7
    const/4 p0, 0x0

    :goto_8
    return p0
.end method

.method public hasWorkspace()Z
    .registers 2

    iget p0, p0, Lcom/android/common/debug/LauncherAtom$ContainerInfo;->containerCase_:I

    const/4 v0, 0x1

    if-ne p0, v0, :cond_6

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/common/debug/LauncherAtom$ContainerInfo;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    sparse-switch v0, :sswitch_data_10c

    invoke-static {p1, v0}, Lcom/google/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v0

    if-nez v0, :cond_0

    return-object p0

    :sswitch_e
    iget v0, p0, Lcom/android/common/debug/LauncherAtom$ContainerInfo;->containerCase_:I

    const/16 v1, 0xb

    if-eq v0, v1, :cond_1b

    new-instance v0, Lcom/android/common/debug/LauncherAtom$TaskSwitcherContainer;

    invoke-direct {v0}, Lcom/android/common/debug/LauncherAtom$TaskSwitcherContainer;-><init>()V

    iput-object v0, p0, Lcom/android/common/debug/LauncherAtom$ContainerInfo;->container_:Ljava/lang/Object;

    :cond_1b
    iget-object v0, p0, Lcom/android/common/debug/LauncherAtom$ContainerInfo;->container_:Ljava/lang/Object;

    check-cast v0, Lcom/google/protobuf/nano/MessageNano;

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    iput v1, p0, Lcom/android/common/debug/LauncherAtom$ContainerInfo;->containerCase_:I

    goto :goto_0

    :sswitch_25
    iget v0, p0, Lcom/android/common/debug/LauncherAtom$ContainerInfo;->containerCase_:I

    const/16 v1, 0xa

    if-eq v0, v1, :cond_32

    new-instance v0, Lcom/android/common/debug/LauncherAtom$PredictedHotseatContainer;

    invoke-direct {v0}, Lcom/android/common/debug/LauncherAtom$PredictedHotseatContainer;-><init>()V

    iput-object v0, p0, Lcom/android/common/debug/LauncherAtom$ContainerInfo;->container_:Ljava/lang/Object;

    :cond_32
    iget-object v0, p0, Lcom/android/common/debug/LauncherAtom$ContainerInfo;->container_:Ljava/lang/Object;

    check-cast v0, Lcom/google/protobuf/nano/MessageNano;

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    iput v1, p0, Lcom/android/common/debug/LauncherAtom$ContainerInfo;->containerCase_:I

    goto :goto_0

    :sswitch_3c
    iget v0, p0, Lcom/android/common/debug/LauncherAtom$ContainerInfo;->containerCase_:I

    const/16 v1, 0x9

    if-eq v0, v1, :cond_49

    new-instance v0, Lcom/android/common/debug/LauncherAtom$SettingsContainer;

    invoke-direct {v0}, Lcom/android/common/debug/LauncherAtom$SettingsContainer;-><init>()V

    iput-object v0, p0, Lcom/android/common/debug/LauncherAtom$ContainerInfo;->container_:Ljava/lang/Object;

    :cond_49
    iget-object v0, p0, Lcom/android/common/debug/LauncherAtom$ContainerInfo;->container_:Ljava/lang/Object;

    check-cast v0, Lcom/google/protobuf/nano/MessageNano;

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    iput v1, p0, Lcom/android/common/debug/LauncherAtom$ContainerInfo;->containerCase_:I

    goto :goto_0

    :sswitch_53
    iget v0, p0, Lcom/android/common/debug/LauncherAtom$ContainerInfo;->containerCase_:I

    const/16 v1, 0x8

    if-eq v0, v1, :cond_60

    new-instance v0, Lcom/android/common/debug/LauncherAtom$ShortcutsContainer;

    invoke-direct {v0}, Lcom/android/common/debug/LauncherAtom$ShortcutsContainer;-><init>()V

    iput-object v0, p0, Lcom/android/common/debug/LauncherAtom$ContainerInfo;->container_:Ljava/lang/Object;

    :cond_60
    iget-object v0, p0, Lcom/android/common/debug/LauncherAtom$ContainerInfo;->container_:Ljava/lang/Object;

    check-cast v0, Lcom/google/protobuf/nano/MessageNano;

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    iput v1, p0, Lcom/android/common/debug/LauncherAtom$ContainerInfo;->containerCase_:I

    goto :goto_0

    :sswitch_6a
    iget v0, p0, Lcom/android/common/debug/LauncherAtom$ContainerInfo;->containerCase_:I

    const/4 v1, 0x7

    if-eq v0, v1, :cond_76

    new-instance v0, Lcom/android/common/debug/LauncherAtom$SearchResultContainer;

    invoke-direct {v0}, Lcom/android/common/debug/LauncherAtom$SearchResultContainer;-><init>()V

    iput-object v0, p0, Lcom/android/common/debug/LauncherAtom$ContainerInfo;->container_:Ljava/lang/Object;

    :cond_76
    iget-object v0, p0, Lcom/android/common/debug/LauncherAtom$ContainerInfo;->container_:Ljava/lang/Object;

    check-cast v0, Lcom/google/protobuf/nano/MessageNano;

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    iput v1, p0, Lcom/android/common/debug/LauncherAtom$ContainerInfo;->containerCase_:I

    goto :goto_0

    :sswitch_80
    iget v0, p0, Lcom/android/common/debug/LauncherAtom$ContainerInfo;->containerCase_:I

    const/4 v1, 0x6

    if-eq v0, v1, :cond_8c

    new-instance v0, Lcom/android/common/debug/LauncherAtom$PredictionContainer;

    invoke-direct {v0}, Lcom/android/common/debug/LauncherAtom$PredictionContainer;-><init>()V

    iput-object v0, p0, Lcom/android/common/debug/LauncherAtom$ContainerInfo;->container_:Ljava/lang/Object;

    :cond_8c
    iget-object v0, p0, Lcom/android/common/debug/LauncherAtom$ContainerInfo;->container_:Ljava/lang/Object;

    check-cast v0, Lcom/google/protobuf/nano/MessageNano;

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    iput v1, p0, Lcom/android/common/debug/LauncherAtom$ContainerInfo;->containerCase_:I

    goto/16 :goto_0

    :sswitch_97
    iget v0, p0, Lcom/android/common/debug/LauncherAtom$ContainerInfo;->containerCase_:I

    const/4 v1, 0x5

    if-eq v0, v1, :cond_a3

    new-instance v0, Lcom/android/common/debug/LauncherAtom$WidgetsContainer;

    invoke-direct {v0}, Lcom/android/common/debug/LauncherAtom$WidgetsContainer;-><init>()V

    iput-object v0, p0, Lcom/android/common/debug/LauncherAtom$ContainerInfo;->container_:Ljava/lang/Object;

    :cond_a3
    iget-object v0, p0, Lcom/android/common/debug/LauncherAtom$ContainerInfo;->container_:Ljava/lang/Object;

    check-cast v0, Lcom/google/protobuf/nano/MessageNano;

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    iput v1, p0, Lcom/android/common/debug/LauncherAtom$ContainerInfo;->containerCase_:I

    goto/16 :goto_0

    :sswitch_ae
    iget v0, p0, Lcom/android/common/debug/LauncherAtom$ContainerInfo;->containerCase_:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_ba

    new-instance v0, Lcom/android/common/debug/LauncherAtom$AllAppsContainer;

    invoke-direct {v0}, Lcom/android/common/debug/LauncherAtom$AllAppsContainer;-><init>()V

    iput-object v0, p0, Lcom/android/common/debug/LauncherAtom$ContainerInfo;->container_:Ljava/lang/Object;

    :cond_ba
    iget-object v0, p0, Lcom/android/common/debug/LauncherAtom$ContainerInfo;->container_:Ljava/lang/Object;

    check-cast v0, Lcom/google/protobuf/nano/MessageNano;

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    iput v1, p0, Lcom/android/common/debug/LauncherAtom$ContainerInfo;->containerCase_:I

    goto/16 :goto_0

    :sswitch_c5
    iget v0, p0, Lcom/android/common/debug/LauncherAtom$ContainerInfo;->containerCase_:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_d1

    new-instance v0, Lcom/android/common/debug/LauncherAtom$FolderContainer;

    invoke-direct {v0}, Lcom/android/common/debug/LauncherAtom$FolderContainer;-><init>()V

    iput-object v0, p0, Lcom/android/common/debug/LauncherAtom$ContainerInfo;->container_:Ljava/lang/Object;

    :cond_d1
    iget-object v0, p0, Lcom/android/common/debug/LauncherAtom$ContainerInfo;->container_:Ljava/lang/Object;

    check-cast v0, Lcom/google/protobuf/nano/MessageNano;

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    iput v1, p0, Lcom/android/common/debug/LauncherAtom$ContainerInfo;->containerCase_:I

    goto/16 :goto_0

    :sswitch_dc
    iget v0, p0, Lcom/android/common/debug/LauncherAtom$ContainerInfo;->containerCase_:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_e8

    new-instance v0, Lcom/android/common/debug/LauncherAtom$HotseatContainer;

    invoke-direct {v0}, Lcom/android/common/debug/LauncherAtom$HotseatContainer;-><init>()V

    iput-object v0, p0, Lcom/android/common/debug/LauncherAtom$ContainerInfo;->container_:Ljava/lang/Object;

    :cond_e8
    iget-object v0, p0, Lcom/android/common/debug/LauncherAtom$ContainerInfo;->container_:Ljava/lang/Object;

    check-cast v0, Lcom/google/protobuf/nano/MessageNano;

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    iput v1, p0, Lcom/android/common/debug/LauncherAtom$ContainerInfo;->containerCase_:I

    goto/16 :goto_0

    :sswitch_f3
    iget v0, p0, Lcom/android/common/debug/LauncherAtom$ContainerInfo;->containerCase_:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_ff

    new-instance v0, Lcom/android/common/debug/LauncherAtom$WorkspaceContainer;

    invoke-direct {v0}, Lcom/android/common/debug/LauncherAtom$WorkspaceContainer;-><init>()V

    iput-object v0, p0, Lcom/android/common/debug/LauncherAtom$ContainerInfo;->container_:Ljava/lang/Object;

    :cond_ff
    iget-object v0, p0, Lcom/android/common/debug/LauncherAtom$ContainerInfo;->container_:Ljava/lang/Object;

    check-cast v0, Lcom/google/protobuf/nano/MessageNano;

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    iput v1, p0, Lcom/android/common/debug/LauncherAtom$ContainerInfo;->containerCase_:I

    goto/16 :goto_0

    :sswitch_10a
    return-object p0

    nop

    :sswitch_data_10c
    .sparse-switch
        0x0 -> :sswitch_10a
        0xa -> :sswitch_f3
        0x12 -> :sswitch_dc
        0x1a -> :sswitch_c5
        0x22 -> :sswitch_ae
        0x2a -> :sswitch_97
        0x32 -> :sswitch_80
        0x3a -> :sswitch_6a
        0x42 -> :sswitch_53
        0x4a -> :sswitch_3c
        0x52 -> :sswitch_25
        0x5a -> :sswitch_e
    .end sparse-switch
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/protobuf/nano/MessageNano;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/android/common/debug/LauncherAtom$ContainerInfo;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/common/debug/LauncherAtom$ContainerInfo;

    move-result-object p0

    return-object p0
.end method

.method public setAllAppsContainer(Lcom/android/common/debug/LauncherAtom$AllAppsContainer;)Lcom/android/common/debug/LauncherAtom$ContainerInfo;
    .registers 3

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x4

    iput v0, p0, Lcom/android/common/debug/LauncherAtom$ContainerInfo;->containerCase_:I

    iput-object p1, p0, Lcom/android/common/debug/LauncherAtom$ContainerInfo;->container_:Ljava/lang/Object;

    return-object p0
.end method

.method public setFolder(Lcom/android/common/debug/LauncherAtom$FolderContainer;)Lcom/android/common/debug/LauncherAtom$ContainerInfo;
    .registers 3

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x3

    iput v0, p0, Lcom/android/common/debug/LauncherAtom$ContainerInfo;->containerCase_:I

    iput-object p1, p0, Lcom/android/common/debug/LauncherAtom$ContainerInfo;->container_:Ljava/lang/Object;

    return-object p0
.end method

.method public setHotseat(Lcom/android/common/debug/LauncherAtom$HotseatContainer;)Lcom/android/common/debug/LauncherAtom$ContainerInfo;
    .registers 3

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x2

    iput v0, p0, Lcom/android/common/debug/LauncherAtom$ContainerInfo;->containerCase_:I

    iput-object p1, p0, Lcom/android/common/debug/LauncherAtom$ContainerInfo;->container_:Ljava/lang/Object;

    return-object p0
.end method

.method public setPredictedHotseatContainer(Lcom/android/common/debug/LauncherAtom$PredictedHotseatContainer;)Lcom/android/common/debug/LauncherAtom$ContainerInfo;
    .registers 3

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v0, 0xa

    iput v0, p0, Lcom/android/common/debug/LauncherAtom$ContainerInfo;->containerCase_:I

    iput-object p1, p0, Lcom/android/common/debug/LauncherAtom$ContainerInfo;->container_:Ljava/lang/Object;

    return-object p0
.end method

.method public setPredictionContainer(Lcom/android/common/debug/LauncherAtom$PredictionContainer;)Lcom/android/common/debug/LauncherAtom$ContainerInfo;
    .registers 3

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x6

    iput v0, p0, Lcom/android/common/debug/LauncherAtom$ContainerInfo;->containerCase_:I

    iput-object p1, p0, Lcom/android/common/debug/LauncherAtom$ContainerInfo;->container_:Ljava/lang/Object;

    return-object p0
.end method

.method public setSearchResultContainer(Lcom/android/common/debug/LauncherAtom$SearchResultContainer;)Lcom/android/common/debug/LauncherAtom$ContainerInfo;
    .registers 3

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x7

    iput v0, p0, Lcom/android/common/debug/LauncherAtom$ContainerInfo;->containerCase_:I

    iput-object p1, p0, Lcom/android/common/debug/LauncherAtom$ContainerInfo;->container_:Ljava/lang/Object;

    return-object p0
.end method

.method public setSettingsContainer(Lcom/android/common/debug/LauncherAtom$SettingsContainer;)Lcom/android/common/debug/LauncherAtom$ContainerInfo;
    .registers 3

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v0, 0x9

    iput v0, p0, Lcom/android/common/debug/LauncherAtom$ContainerInfo;->containerCase_:I

    iput-object p1, p0, Lcom/android/common/debug/LauncherAtom$ContainerInfo;->container_:Ljava/lang/Object;

    return-object p0
.end method

.method public setShortcutsContainer(Lcom/android/common/debug/LauncherAtom$ShortcutsContainer;)Lcom/android/common/debug/LauncherAtom$ContainerInfo;
    .registers 3

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v0, 0x8

    iput v0, p0, Lcom/android/common/debug/LauncherAtom$ContainerInfo;->containerCase_:I

    iput-object p1, p0, Lcom/android/common/debug/LauncherAtom$ContainerInfo;->container_:Ljava/lang/Object;

    return-object p0
.end method

.method public setTaskSwitcherContainer(Lcom/android/common/debug/LauncherAtom$TaskSwitcherContainer;)Lcom/android/common/debug/LauncherAtom$ContainerInfo;
    .registers 3

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v0, 0xb

    iput v0, p0, Lcom/android/common/debug/LauncherAtom$ContainerInfo;->containerCase_:I

    iput-object p1, p0, Lcom/android/common/debug/LauncherAtom$ContainerInfo;->container_:Ljava/lang/Object;

    return-object p0
.end method

.method public setWidgetsContainer(Lcom/android/common/debug/LauncherAtom$WidgetsContainer;)Lcom/android/common/debug/LauncherAtom$ContainerInfo;
    .registers 3

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x5

    iput v0, p0, Lcom/android/common/debug/LauncherAtom$ContainerInfo;->containerCase_:I

    iput-object p1, p0, Lcom/android/common/debug/LauncherAtom$ContainerInfo;->container_:Ljava/lang/Object;

    return-object p0
.end method

.method public setWorkspace(Lcom/android/common/debug/LauncherAtom$WorkspaceContainer;)Lcom/android/common/debug/LauncherAtom$ContainerInfo;
    .registers 3

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/common/debug/LauncherAtom$ContainerInfo;->containerCase_:I

    iput-object p1, p0, Lcom/android/common/debug/LauncherAtom$ContainerInfo;->container_:Ljava/lang/Object;

    return-object p0
.end method

.method public writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lcom/android/common/debug/LauncherAtom$ContainerInfo;->containerCase_:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_c

    iget-object v0, p0, Lcom/android/common/debug/LauncherAtom$ContainerInfo;->container_:Ljava/lang/Object;

    check-cast v0, Lcom/google/protobuf/nano/MessageNano;

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    :cond_c
    iget v0, p0, Lcom/android/common/debug/LauncherAtom$ContainerInfo;->containerCase_:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_18

    iget-object v0, p0, Lcom/android/common/debug/LauncherAtom$ContainerInfo;->container_:Ljava/lang/Object;

    check-cast v0, Lcom/google/protobuf/nano/MessageNano;

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    :cond_18
    iget v0, p0, Lcom/android/common/debug/LauncherAtom$ContainerInfo;->containerCase_:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_24

    iget-object v0, p0, Lcom/android/common/debug/LauncherAtom$ContainerInfo;->container_:Ljava/lang/Object;

    check-cast v0, Lcom/google/protobuf/nano/MessageNano;

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    :cond_24
    iget v0, p0, Lcom/android/common/debug/LauncherAtom$ContainerInfo;->containerCase_:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_30

    iget-object v0, p0, Lcom/android/common/debug/LauncherAtom$ContainerInfo;->container_:Ljava/lang/Object;

    check-cast v0, Lcom/google/protobuf/nano/MessageNano;

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    :cond_30
    iget v0, p0, Lcom/android/common/debug/LauncherAtom$ContainerInfo;->containerCase_:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_3c

    iget-object v0, p0, Lcom/android/common/debug/LauncherAtom$ContainerInfo;->container_:Ljava/lang/Object;

    check-cast v0, Lcom/google/protobuf/nano/MessageNano;

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    :cond_3c
    iget v0, p0, Lcom/android/common/debug/LauncherAtom$ContainerInfo;->containerCase_:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_48

    iget-object v0, p0, Lcom/android/common/debug/LauncherAtom$ContainerInfo;->container_:Ljava/lang/Object;

    check-cast v0, Lcom/google/protobuf/nano/MessageNano;

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    :cond_48
    iget v0, p0, Lcom/android/common/debug/LauncherAtom$ContainerInfo;->containerCase_:I

    const/4 v1, 0x7

    if-ne v0, v1, :cond_54

    iget-object v0, p0, Lcom/android/common/debug/LauncherAtom$ContainerInfo;->container_:Ljava/lang/Object;

    check-cast v0, Lcom/google/protobuf/nano/MessageNano;

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    :cond_54
    iget v0, p0, Lcom/android/common/debug/LauncherAtom$ContainerInfo;->containerCase_:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_61

    iget-object v0, p0, Lcom/android/common/debug/LauncherAtom$ContainerInfo;->container_:Ljava/lang/Object;

    check-cast v0, Lcom/google/protobuf/nano/MessageNano;

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    :cond_61
    iget v0, p0, Lcom/android/common/debug/LauncherAtom$ContainerInfo;->containerCase_:I

    const/16 v1, 0x9

    if-ne v0, v1, :cond_6e

    iget-object v0, p0, Lcom/android/common/debug/LauncherAtom$ContainerInfo;->container_:Ljava/lang/Object;

    check-cast v0, Lcom/google/protobuf/nano/MessageNano;

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    :cond_6e
    iget v0, p0, Lcom/android/common/debug/LauncherAtom$ContainerInfo;->containerCase_:I

    const/16 v1, 0xa

    if-ne v0, v1, :cond_7b

    iget-object v0, p0, Lcom/android/common/debug/LauncherAtom$ContainerInfo;->container_:Ljava/lang/Object;

    check-cast v0, Lcom/google/protobuf/nano/MessageNano;

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    :cond_7b
    iget v0, p0, Lcom/android/common/debug/LauncherAtom$ContainerInfo;->containerCase_:I

    const/16 v1, 0xb

    if-ne v0, v1, :cond_88

    iget-object v0, p0, Lcom/android/common/debug/LauncherAtom$ContainerInfo;->container_:Ljava/lang/Object;

    check-cast v0, Lcom/google/protobuf/nano/MessageNano;

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    :cond_88
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/MessageNano;->writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    return-void
.end method
