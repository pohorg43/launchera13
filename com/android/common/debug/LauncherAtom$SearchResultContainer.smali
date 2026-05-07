.class public final Lcom/android/common/debug/LauncherAtom$SearchResultContainer;
.super Lcom/google/protobuf/nano/MessageNano;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/common/debug/LauncherAtom;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SearchResultContainer"
.end annotation


# static fields
.field public static final ALL_APPS_CONTAINER_FIELD_NUMBER:I = 0x3

.field public static final WORKSPACE_FIELD_NUMBER:I = 0x2

.field private static volatile _emptyArray:[Lcom/android/common/debug/LauncherAtom$SearchResultContainer;


# instance fields
.field private parentContainerCase_:I

.field private parentContainer_:Ljava/lang/Object;

.field public queryLength:I


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lcom/google/protobuf/nano/MessageNano;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/common/debug/LauncherAtom$SearchResultContainer;->parentContainerCase_:I

    invoke-virtual {p0}, Lcom/android/common/debug/LauncherAtom$SearchResultContainer;->clear()Lcom/android/common/debug/LauncherAtom$SearchResultContainer;

    return-void
.end method

.method public static emptyArray()[Lcom/android/common/debug/LauncherAtom$SearchResultContainer;
    .registers 2

    sget-object v0, Lcom/android/common/debug/LauncherAtom$SearchResultContainer;->_emptyArray:[Lcom/android/common/debug/LauncherAtom$SearchResultContainer;

    if-nez v0, :cond_15

    sget-object v0, Lcom/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v0

    :try_start_7
    sget-object v1, Lcom/android/common/debug/LauncherAtom$SearchResultContainer;->_emptyArray:[Lcom/android/common/debug/LauncherAtom$SearchResultContainer;

    if-nez v1, :cond_10

    const/4 v1, 0x0

    new-array v1, v1, [Lcom/android/common/debug/LauncherAtom$SearchResultContainer;

    sput-object v1, Lcom/android/common/debug/LauncherAtom$SearchResultContainer;->_emptyArray:[Lcom/android/common/debug/LauncherAtom$SearchResultContainer;

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
    sget-object v0, Lcom/android/common/debug/LauncherAtom$SearchResultContainer;->_emptyArray:[Lcom/android/common/debug/LauncherAtom$SearchResultContainer;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/common/debug/LauncherAtom$SearchResultContainer;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Lcom/android/common/debug/LauncherAtom$SearchResultContainer;

    invoke-direct {v0}, Lcom/android/common/debug/LauncherAtom$SearchResultContainer;-><init>()V

    invoke-virtual {v0, p0}, Lcom/android/common/debug/LauncherAtom$SearchResultContainer;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/common/debug/LauncherAtom$SearchResultContainer;

    move-result-object p0

    return-object p0
.end method

.method public static parseFrom([B)Lcom/android/common/debug/LauncherAtom$SearchResultContainer;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    new-instance v0, Lcom/android/common/debug/LauncherAtom$SearchResultContainer;

    invoke-direct {v0}, Lcom/android/common/debug/LauncherAtom$SearchResultContainer;-><init>()V

    invoke-static {v0, p0}, Lcom/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/protobuf/nano/MessageNano;[B)Lcom/google/protobuf/nano/MessageNano;

    move-result-object p0

    check-cast p0, Lcom/android/common/debug/LauncherAtom$SearchResultContainer;

    return-object p0
.end method


# virtual methods
.method public clear()Lcom/android/common/debug/LauncherAtom$SearchResultContainer;
    .registers 2

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/common/debug/LauncherAtom$SearchResultContainer;->queryLength:I

    invoke-virtual {p0}, Lcom/android/common/debug/LauncherAtom$SearchResultContainer;->clearParentContainer()Lcom/android/common/debug/LauncherAtom$SearchResultContainer;

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/protobuf/nano/MessageNano;->cachedSize:I

    return-object p0
.end method

.method public clearParentContainer()Lcom/android/common/debug/LauncherAtom$SearchResultContainer;
    .registers 2

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/common/debug/LauncherAtom$SearchResultContainer;->parentContainerCase_:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/common/debug/LauncherAtom$SearchResultContainer;->parentContainer_:Ljava/lang/Object;

    return-object p0
.end method

.method public computeSerializedSize()I
    .registers 4

    invoke-super {p0}, Lcom/google/protobuf/nano/MessageNano;->computeSerializedSize()I

    move-result v0

    iget v1, p0, Lcom/android/common/debug/LauncherAtom$SearchResultContainer;->queryLength:I

    if-eqz v1, :cond_e

    const/4 v2, 0x1

    invoke-static {v2, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_e
    iget v1, p0, Lcom/android/common/debug/LauncherAtom$SearchResultContainer;->parentContainerCase_:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1c

    iget-object v1, p0, Lcom/android/common/debug/LauncherAtom$SearchResultContainer;->parentContainer_:Ljava/lang/Object;

    check-cast v1, Lcom/google/protobuf/nano/MessageNano;

    invoke-static {v2, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_1c
    iget v1, p0, Lcom/android/common/debug/LauncherAtom$SearchResultContainer;->parentContainerCase_:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_2a

    iget-object p0, p0, Lcom/android/common/debug/LauncherAtom$SearchResultContainer;->parentContainer_:Ljava/lang/Object;

    check-cast p0, Lcom/google/protobuf/nano/MessageNano;

    invoke-static {v2, p0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result p0

    add-int/2addr v0, p0

    :cond_2a
    return v0
.end method

.method public getAllAppsContainer()Lcom/android/common/debug/LauncherAtom$AllAppsContainer;
    .registers 3

    iget v0, p0, Lcom/android/common/debug/LauncherAtom$SearchResultContainer;->parentContainerCase_:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_a

    iget-object p0, p0, Lcom/android/common/debug/LauncherAtom$SearchResultContainer;->parentContainer_:Ljava/lang/Object;

    check-cast p0, Lcom/android/common/debug/LauncherAtom$AllAppsContainer;

    return-object p0

    :cond_a
    const/4 p0, 0x0

    return-object p0
.end method

.method public getParentContainerCase()I
    .registers 1

    iget p0, p0, Lcom/android/common/debug/LauncherAtom$SearchResultContainer;->parentContainerCase_:I

    return p0
.end method

.method public getWorkspace()Lcom/android/common/debug/LauncherAtom$WorkspaceContainer;
    .registers 3

    iget v0, p0, Lcom/android/common/debug/LauncherAtom$SearchResultContainer;->parentContainerCase_:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_a

    iget-object p0, p0, Lcom/android/common/debug/LauncherAtom$SearchResultContainer;->parentContainer_:Ljava/lang/Object;

    check-cast p0, Lcom/android/common/debug/LauncherAtom$WorkspaceContainer;

    return-object p0

    :cond_a
    const/4 p0, 0x0

    return-object p0
.end method

.method public hasAllAppsContainer()Z
    .registers 2

    iget p0, p0, Lcom/android/common/debug/LauncherAtom$SearchResultContainer;->parentContainerCase_:I

    const/4 v0, 0x3

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

    iget p0, p0, Lcom/android/common/debug/LauncherAtom$SearchResultContainer;->parentContainerCase_:I

    const/4 v0, 0x2

    if-ne p0, v0, :cond_7

    const/4 p0, 0x1

    goto :goto_8

    :cond_7
    const/4 p0, 0x0

    :goto_8
    return p0
.end method

.method public mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/common/debug/LauncherAtom$SearchResultContainer;
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

    if-eqz v0, :cond_4c

    const/16 v1, 0x8

    if-eq v0, v1, :cond_45

    const/16 v1, 0x12

    if-eq v0, v1, :cond_2f

    const/16 v1, 0x1a

    if-eq v0, v1, :cond_19

    invoke-static {p1, v0}, Lcom/google/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v0

    if-nez v0, :cond_0

    return-object p0

    :cond_19
    iget v0, p0, Lcom/android/common/debug/LauncherAtom$SearchResultContainer;->parentContainerCase_:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_25

    new-instance v0, Lcom/android/common/debug/LauncherAtom$AllAppsContainer;

    invoke-direct {v0}, Lcom/android/common/debug/LauncherAtom$AllAppsContainer;-><init>()V

    iput-object v0, p0, Lcom/android/common/debug/LauncherAtom$SearchResultContainer;->parentContainer_:Ljava/lang/Object;

    :cond_25
    iget-object v0, p0, Lcom/android/common/debug/LauncherAtom$SearchResultContainer;->parentContainer_:Ljava/lang/Object;

    check-cast v0, Lcom/google/protobuf/nano/MessageNano;

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    iput v1, p0, Lcom/android/common/debug/LauncherAtom$SearchResultContainer;->parentContainerCase_:I

    goto :goto_0

    :cond_2f
    iget v0, p0, Lcom/android/common/debug/LauncherAtom$SearchResultContainer;->parentContainerCase_:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_3b

    new-instance v0, Lcom/android/common/debug/LauncherAtom$WorkspaceContainer;

    invoke-direct {v0}, Lcom/android/common/debug/LauncherAtom$WorkspaceContainer;-><init>()V

    iput-object v0, p0, Lcom/android/common/debug/LauncherAtom$SearchResultContainer;->parentContainer_:Ljava/lang/Object;

    :cond_3b
    iget-object v0, p0, Lcom/android/common/debug/LauncherAtom$SearchResultContainer;->parentContainer_:Ljava/lang/Object;

    check-cast v0, Lcom/google/protobuf/nano/MessageNano;

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    iput v1, p0, Lcom/android/common/debug/LauncherAtom$SearchResultContainer;->parentContainerCase_:I

    goto :goto_0

    :cond_45
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/android/common/debug/LauncherAtom$SearchResultContainer;->queryLength:I

    goto :goto_0

    :cond_4c
    return-object p0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/protobuf/nano/MessageNano;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/android/common/debug/LauncherAtom$SearchResultContainer;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/common/debug/LauncherAtom$SearchResultContainer;

    move-result-object p0

    return-object p0
.end method

.method public setAllAppsContainer(Lcom/android/common/debug/LauncherAtom$AllAppsContainer;)Lcom/android/common/debug/LauncherAtom$SearchResultContainer;
    .registers 3

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x3

    iput v0, p0, Lcom/android/common/debug/LauncherAtom$SearchResultContainer;->parentContainerCase_:I

    iput-object p1, p0, Lcom/android/common/debug/LauncherAtom$SearchResultContainer;->parentContainer_:Ljava/lang/Object;

    return-object p0
.end method

.method public setWorkspace(Lcom/android/common/debug/LauncherAtom$WorkspaceContainer;)Lcom/android/common/debug/LauncherAtom$SearchResultContainer;
    .registers 3

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x2

    iput v0, p0, Lcom/android/common/debug/LauncherAtom$SearchResultContainer;->parentContainerCase_:I

    iput-object p1, p0, Lcom/android/common/debug/LauncherAtom$SearchResultContainer;->parentContainer_:Ljava/lang/Object;

    return-object p0
.end method

.method public writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lcom/android/common/debug/LauncherAtom$SearchResultContainer;->queryLength:I

    if-eqz v0, :cond_8

    const/4 v1, 0x1

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    :cond_8
    iget v0, p0, Lcom/android/common/debug/LauncherAtom$SearchResultContainer;->parentContainerCase_:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_14

    iget-object v0, p0, Lcom/android/common/debug/LauncherAtom$SearchResultContainer;->parentContainer_:Ljava/lang/Object;

    check-cast v0, Lcom/google/protobuf/nano/MessageNano;

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    :cond_14
    iget v0, p0, Lcom/android/common/debug/LauncherAtom$SearchResultContainer;->parentContainerCase_:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_20

    iget-object v0, p0, Lcom/android/common/debug/LauncherAtom$SearchResultContainer;->parentContainer_:Ljava/lang/Object;

    check-cast v0, Lcom/google/protobuf/nano/MessageNano;

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    :cond_20
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/MessageNano;->writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    return-void
.end method
