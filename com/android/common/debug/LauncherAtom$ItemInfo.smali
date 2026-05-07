.class public final Lcom/android/common/debug/LauncherAtom$ItemInfo;
.super Lcom/google/protobuf/nano/MessageNano;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/common/debug/LauncherAtom;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ItemInfo"
.end annotation


# static fields
.field public static final APPLICATION_FIELD_NUMBER:I = 0x1

.field public static final FOLDER_ICON_FIELD_NUMBER:I = 0x9

.field public static final SHORTCUT_FIELD_NUMBER:I = 0x3

.field public static final TASK_FIELD_NUMBER:I = 0x2

.field public static final WIDGET_FIELD_NUMBER:I = 0x4

.field private static volatile _emptyArray:[Lcom/android/common/debug/LauncherAtom$ItemInfo;


# instance fields
.field public attribute:I

.field public containerInfo:Lcom/android/common/debug/LauncherAtom$ContainerInfo;

.field public isWork:Z

.field private itemCase_:I

.field private item_:Ljava/lang/Object;

.field public rank:I


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lcom/google/protobuf/nano/MessageNano;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/common/debug/LauncherAtom$ItemInfo;->itemCase_:I

    invoke-virtual {p0}, Lcom/android/common/debug/LauncherAtom$ItemInfo;->clear()Lcom/android/common/debug/LauncherAtom$ItemInfo;

    return-void
.end method

.method public static emptyArray()[Lcom/android/common/debug/LauncherAtom$ItemInfo;
    .registers 2

    sget-object v0, Lcom/android/common/debug/LauncherAtom$ItemInfo;->_emptyArray:[Lcom/android/common/debug/LauncherAtom$ItemInfo;

    if-nez v0, :cond_15

    sget-object v0, Lcom/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v0

    :try_start_7
    sget-object v1, Lcom/android/common/debug/LauncherAtom$ItemInfo;->_emptyArray:[Lcom/android/common/debug/LauncherAtom$ItemInfo;

    if-nez v1, :cond_10

    const/4 v1, 0x0

    new-array v1, v1, [Lcom/android/common/debug/LauncherAtom$ItemInfo;

    sput-object v1, Lcom/android/common/debug/LauncherAtom$ItemInfo;->_emptyArray:[Lcom/android/common/debug/LauncherAtom$ItemInfo;

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
    sget-object v0, Lcom/android/common/debug/LauncherAtom$ItemInfo;->_emptyArray:[Lcom/android/common/debug/LauncherAtom$ItemInfo;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/common/debug/LauncherAtom$ItemInfo;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Lcom/android/common/debug/LauncherAtom$ItemInfo;

    invoke-direct {v0}, Lcom/android/common/debug/LauncherAtom$ItemInfo;-><init>()V

    invoke-virtual {v0, p0}, Lcom/android/common/debug/LauncherAtom$ItemInfo;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/common/debug/LauncherAtom$ItemInfo;

    move-result-object p0

    return-object p0
.end method

.method public static parseFrom([B)Lcom/android/common/debug/LauncherAtom$ItemInfo;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    new-instance v0, Lcom/android/common/debug/LauncherAtom$ItemInfo;

    invoke-direct {v0}, Lcom/android/common/debug/LauncherAtom$ItemInfo;-><init>()V

    invoke-static {v0, p0}, Lcom/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/protobuf/nano/MessageNano;[B)Lcom/google/protobuf/nano/MessageNano;

    move-result-object p0

    check-cast p0, Lcom/android/common/debug/LauncherAtom$ItemInfo;

    return-object p0
.end method


# virtual methods
.method public clear()Lcom/android/common/debug/LauncherAtom$ItemInfo;
    .registers 3

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/common/debug/LauncherAtom$ItemInfo;->rank:I

    iput-boolean v0, p0, Lcom/android/common/debug/LauncherAtom$ItemInfo;->isWork:Z

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/common/debug/LauncherAtom$ItemInfo;->containerInfo:Lcom/android/common/debug/LauncherAtom$ContainerInfo;

    iput v0, p0, Lcom/android/common/debug/LauncherAtom$ItemInfo;->attribute:I

    invoke-virtual {p0}, Lcom/android/common/debug/LauncherAtom$ItemInfo;->clearItem()Lcom/android/common/debug/LauncherAtom$ItemInfo;

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/protobuf/nano/MessageNano;->cachedSize:I

    return-object p0
.end method

.method public clearItem()Lcom/android/common/debug/LauncherAtom$ItemInfo;
    .registers 2

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/common/debug/LauncherAtom$ItemInfo;->itemCase_:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/common/debug/LauncherAtom$ItemInfo;->item_:Ljava/lang/Object;

    return-object p0
.end method

.method public computeSerializedSize()I
    .registers 4

    invoke-super {p0}, Lcom/google/protobuf/nano/MessageNano;->computeSerializedSize()I

    move-result v0

    iget v1, p0, Lcom/android/common/debug/LauncherAtom$ItemInfo;->itemCase_:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_12

    iget-object v1, p0, Lcom/android/common/debug/LauncherAtom$ItemInfo;->item_:Ljava/lang/Object;

    check-cast v1, Lcom/google/protobuf/nano/MessageNano;

    invoke-static {v2, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_12
    iget v1, p0, Lcom/android/common/debug/LauncherAtom$ItemInfo;->itemCase_:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_20

    iget-object v1, p0, Lcom/android/common/debug/LauncherAtom$ItemInfo;->item_:Ljava/lang/Object;

    check-cast v1, Lcom/google/protobuf/nano/MessageNano;

    invoke-static {v2, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_20
    iget v1, p0, Lcom/android/common/debug/LauncherAtom$ItemInfo;->itemCase_:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_2e

    iget-object v1, p0, Lcom/android/common/debug/LauncherAtom$ItemInfo;->item_:Ljava/lang/Object;

    check-cast v1, Lcom/google/protobuf/nano/MessageNano;

    invoke-static {v2, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_2e
    iget v1, p0, Lcom/android/common/debug/LauncherAtom$ItemInfo;->itemCase_:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_3c

    iget-object v1, p0, Lcom/android/common/debug/LauncherAtom$ItemInfo;->item_:Ljava/lang/Object;

    check-cast v1, Lcom/google/protobuf/nano/MessageNano;

    invoke-static {v2, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_3c
    iget v1, p0, Lcom/android/common/debug/LauncherAtom$ItemInfo;->rank:I

    if-eqz v1, :cond_46

    const/4 v2, 0x5

    invoke-static {v2, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_46
    iget-boolean v1, p0, Lcom/android/common/debug/LauncherAtom$ItemInfo;->isWork:Z

    if-eqz v1, :cond_50

    const/4 v2, 0x6

    invoke-static {v2, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    :cond_50
    iget-object v1, p0, Lcom/android/common/debug/LauncherAtom$ItemInfo;->containerInfo:Lcom/android/common/debug/LauncherAtom$ContainerInfo;

    if-eqz v1, :cond_5a

    const/4 v2, 0x7

    invoke-static {v2, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_5a
    iget v1, p0, Lcom/android/common/debug/LauncherAtom$ItemInfo;->attribute:I

    if-eqz v1, :cond_65

    const/16 v2, 0x8

    invoke-static {v2, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_65
    iget v1, p0, Lcom/android/common/debug/LauncherAtom$ItemInfo;->itemCase_:I

    const/16 v2, 0x9

    if-ne v1, v2, :cond_74

    iget-object p0, p0, Lcom/android/common/debug/LauncherAtom$ItemInfo;->item_:Ljava/lang/Object;

    check-cast p0, Lcom/google/protobuf/nano/MessageNano;

    invoke-static {v2, p0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result p0

    add-int/2addr v0, p0

    :cond_74
    return v0
.end method

.method public getApplication()Lcom/android/common/debug/LauncherAtom$Application;
    .registers 3

    iget v0, p0, Lcom/android/common/debug/LauncherAtom$ItemInfo;->itemCase_:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_a

    iget-object p0, p0, Lcom/android/common/debug/LauncherAtom$ItemInfo;->item_:Ljava/lang/Object;

    check-cast p0, Lcom/android/common/debug/LauncherAtom$Application;

    return-object p0

    :cond_a
    const/4 p0, 0x0

    return-object p0
.end method

.method public getFolderIcon()Lcom/android/common/debug/LauncherAtom$FolderIcon;
    .registers 3

    iget v0, p0, Lcom/android/common/debug/LauncherAtom$ItemInfo;->itemCase_:I

    const/16 v1, 0x9

    if-ne v0, v1, :cond_b

    iget-object p0, p0, Lcom/android/common/debug/LauncherAtom$ItemInfo;->item_:Ljava/lang/Object;

    check-cast p0, Lcom/android/common/debug/LauncherAtom$FolderIcon;

    return-object p0

    :cond_b
    const/4 p0, 0x0

    return-object p0
.end method

.method public getItemCase()I
    .registers 1

    iget p0, p0, Lcom/android/common/debug/LauncherAtom$ItemInfo;->itemCase_:I

    return p0
.end method

.method public getShortcut()Lcom/android/common/debug/LauncherAtom$Shortcut;
    .registers 3

    iget v0, p0, Lcom/android/common/debug/LauncherAtom$ItemInfo;->itemCase_:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_a

    iget-object p0, p0, Lcom/android/common/debug/LauncherAtom$ItemInfo;->item_:Ljava/lang/Object;

    check-cast p0, Lcom/android/common/debug/LauncherAtom$Shortcut;

    return-object p0

    :cond_a
    const/4 p0, 0x0

    return-object p0
.end method

.method public getTask()Lcom/android/common/debug/LauncherAtom$Task;
    .registers 3

    iget v0, p0, Lcom/android/common/debug/LauncherAtom$ItemInfo;->itemCase_:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_a

    iget-object p0, p0, Lcom/android/common/debug/LauncherAtom$ItemInfo;->item_:Ljava/lang/Object;

    check-cast p0, Lcom/android/common/debug/LauncherAtom$Task;

    return-object p0

    :cond_a
    const/4 p0, 0x0

    return-object p0
.end method

.method public getWidget()Lcom/android/common/debug/LauncherAtom$Widget;
    .registers 3

    iget v0, p0, Lcom/android/common/debug/LauncherAtom$ItemInfo;->itemCase_:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_a

    iget-object p0, p0, Lcom/android/common/debug/LauncherAtom$ItemInfo;->item_:Ljava/lang/Object;

    check-cast p0, Lcom/android/common/debug/LauncherAtom$Widget;

    return-object p0

    :cond_a
    const/4 p0, 0x0

    return-object p0
.end method

.method public hasApplication()Z
    .registers 2

    iget p0, p0, Lcom/android/common/debug/LauncherAtom$ItemInfo;->itemCase_:I

    const/4 v0, 0x1

    if-ne p0, v0, :cond_6

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public hasFolderIcon()Z
    .registers 2

    iget p0, p0, Lcom/android/common/debug/LauncherAtom$ItemInfo;->itemCase_:I

    const/16 v0, 0x9

    if-ne p0, v0, :cond_8

    const/4 p0, 0x1

    goto :goto_9

    :cond_8
    const/4 p0, 0x0

    :goto_9
    return p0
.end method

.method public hasShortcut()Z
    .registers 2

    iget p0, p0, Lcom/android/common/debug/LauncherAtom$ItemInfo;->itemCase_:I

    const/4 v0, 0x3

    if-ne p0, v0, :cond_7

    const/4 p0, 0x1

    goto :goto_8

    :cond_7
    const/4 p0, 0x0

    :goto_8
    return p0
.end method

.method public hasTask()Z
    .registers 2

    iget p0, p0, Lcom/android/common/debug/LauncherAtom$ItemInfo;->itemCase_:I

    const/4 v0, 0x2

    if-ne p0, v0, :cond_7

    const/4 p0, 0x1

    goto :goto_8

    :cond_7
    const/4 p0, 0x0

    :goto_8
    return p0
.end method

.method public hasWidget()Z
    .registers 2

    iget p0, p0, Lcom/android/common/debug/LauncherAtom$ItemInfo;->itemCase_:I

    const/4 v0, 0x4

    if-ne p0, v0, :cond_7

    const/4 p0, 0x1

    goto :goto_8

    :cond_7
    const/4 p0, 0x0

    :goto_8
    return p0
.end method

.method public mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/common/debug/LauncherAtom$ItemInfo;
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

    if-eqz v0, :cond_ce

    const/16 v1, 0xa

    if-eq v0, v1, :cond_b7

    const/16 v1, 0x12

    if-eq v0, v1, :cond_a0

    const/16 v1, 0x1a

    if-eq v0, v1, :cond_89

    const/16 v1, 0x22

    if-eq v0, v1, :cond_72

    const/16 v1, 0x28

    if-eq v0, v1, :cond_6b

    const/16 v1, 0x30

    if-eq v0, v1, :cond_64

    const/16 v1, 0x3a

    if-eq v0, v1, :cond_53

    const/16 v1, 0x40

    if-eq v0, v1, :cond_48

    const/16 v1, 0x4a

    if-eq v0, v1, :cond_31

    invoke-static {p1, v0}, Lcom/google/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v0

    if-nez v0, :cond_0

    return-object p0

    :cond_31
    iget v0, p0, Lcom/android/common/debug/LauncherAtom$ItemInfo;->itemCase_:I

    const/16 v1, 0x9

    if-eq v0, v1, :cond_3e

    new-instance v0, Lcom/android/common/debug/LauncherAtom$FolderIcon;

    invoke-direct {v0}, Lcom/android/common/debug/LauncherAtom$FolderIcon;-><init>()V

    iput-object v0, p0, Lcom/android/common/debug/LauncherAtom$ItemInfo;->item_:Ljava/lang/Object;

    :cond_3e
    iget-object v0, p0, Lcom/android/common/debug/LauncherAtom$ItemInfo;->item_:Ljava/lang/Object;

    check-cast v0, Lcom/google/protobuf/nano/MessageNano;

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    iput v1, p0, Lcom/android/common/debug/LauncherAtom$ItemInfo;->itemCase_:I

    goto :goto_0

    :cond_48
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    packed-switch v0, :pswitch_data_d0

    goto :goto_0

    :pswitch_50  #0x0, 0x1, 0x2, 0x3, 0x4, 0x5, 0x6, 0x7, 0x8, 0x9, 0xa, 0xb, 0xc
    iput v0, p0, Lcom/android/common/debug/LauncherAtom$ItemInfo;->attribute:I

    goto :goto_0

    :cond_53
    iget-object v0, p0, Lcom/android/common/debug/LauncherAtom$ItemInfo;->containerInfo:Lcom/android/common/debug/LauncherAtom$ContainerInfo;

    if-nez v0, :cond_5e

    new-instance v0, Lcom/android/common/debug/LauncherAtom$ContainerInfo;

    invoke-direct {v0}, Lcom/android/common/debug/LauncherAtom$ContainerInfo;-><init>()V

    iput-object v0, p0, Lcom/android/common/debug/LauncherAtom$ItemInfo;->containerInfo:Lcom/android/common/debug/LauncherAtom$ContainerInfo;

    :cond_5e
    iget-object v0, p0, Lcom/android/common/debug/LauncherAtom$ItemInfo;->containerInfo:Lcom/android/common/debug/LauncherAtom$ContainerInfo;

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    :cond_64
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/common/debug/LauncherAtom$ItemInfo;->isWork:Z

    goto :goto_0

    :cond_6b
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/android/common/debug/LauncherAtom$ItemInfo;->rank:I

    goto :goto_0

    :cond_72
    iget v0, p0, Lcom/android/common/debug/LauncherAtom$ItemInfo;->itemCase_:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_7e

    new-instance v0, Lcom/android/common/debug/LauncherAtom$Widget;

    invoke-direct {v0}, Lcom/android/common/debug/LauncherAtom$Widget;-><init>()V

    iput-object v0, p0, Lcom/android/common/debug/LauncherAtom$ItemInfo;->item_:Ljava/lang/Object;

    :cond_7e
    iget-object v0, p0, Lcom/android/common/debug/LauncherAtom$ItemInfo;->item_:Ljava/lang/Object;

    check-cast v0, Lcom/google/protobuf/nano/MessageNano;

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    iput v1, p0, Lcom/android/common/debug/LauncherAtom$ItemInfo;->itemCase_:I

    goto/16 :goto_0

    :cond_89
    iget v0, p0, Lcom/android/common/debug/LauncherAtom$ItemInfo;->itemCase_:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_95

    new-instance v0, Lcom/android/common/debug/LauncherAtom$Shortcut;

    invoke-direct {v0}, Lcom/android/common/debug/LauncherAtom$Shortcut;-><init>()V

    iput-object v0, p0, Lcom/android/common/debug/LauncherAtom$ItemInfo;->item_:Ljava/lang/Object;

    :cond_95
    iget-object v0, p0, Lcom/android/common/debug/LauncherAtom$ItemInfo;->item_:Ljava/lang/Object;

    check-cast v0, Lcom/google/protobuf/nano/MessageNano;

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    iput v1, p0, Lcom/android/common/debug/LauncherAtom$ItemInfo;->itemCase_:I

    goto/16 :goto_0

    :cond_a0
    iget v0, p0, Lcom/android/common/debug/LauncherAtom$ItemInfo;->itemCase_:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_ac

    new-instance v0, Lcom/android/common/debug/LauncherAtom$Task;

    invoke-direct {v0}, Lcom/android/common/debug/LauncherAtom$Task;-><init>()V

    iput-object v0, p0, Lcom/android/common/debug/LauncherAtom$ItemInfo;->item_:Ljava/lang/Object;

    :cond_ac
    iget-object v0, p0, Lcom/android/common/debug/LauncherAtom$ItemInfo;->item_:Ljava/lang/Object;

    check-cast v0, Lcom/google/protobuf/nano/MessageNano;

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    iput v1, p0, Lcom/android/common/debug/LauncherAtom$ItemInfo;->itemCase_:I

    goto/16 :goto_0

    :cond_b7
    iget v0, p0, Lcom/android/common/debug/LauncherAtom$ItemInfo;->itemCase_:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_c3

    new-instance v0, Lcom/android/common/debug/LauncherAtom$Application;

    invoke-direct {v0}, Lcom/android/common/debug/LauncherAtom$Application;-><init>()V

    iput-object v0, p0, Lcom/android/common/debug/LauncherAtom$ItemInfo;->item_:Ljava/lang/Object;

    :cond_c3
    iget-object v0, p0, Lcom/android/common/debug/LauncherAtom$ItemInfo;->item_:Ljava/lang/Object;

    check-cast v0, Lcom/google/protobuf/nano/MessageNano;

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    iput v1, p0, Lcom/android/common/debug/LauncherAtom$ItemInfo;->itemCase_:I

    goto/16 :goto_0

    :cond_ce
    return-object p0

    nop

    :pswitch_data_d0
    .packed-switch 0x0
        :pswitch_50  #00000000
        :pswitch_50  #00000001
        :pswitch_50  #00000002
        :pswitch_50  #00000003
        :pswitch_50  #00000004
        :pswitch_50  #00000005
        :pswitch_50  #00000006
        :pswitch_50  #00000007
        :pswitch_50  #00000008
        :pswitch_50  #00000009
        :pswitch_50  #0000000a
        :pswitch_50  #0000000b
        :pswitch_50  #0000000c
    .end packed-switch
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/protobuf/nano/MessageNano;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/android/common/debug/LauncherAtom$ItemInfo;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/common/debug/LauncherAtom$ItemInfo;

    move-result-object p0

    return-object p0
.end method

.method public setApplication(Lcom/android/common/debug/LauncherAtom$Application;)Lcom/android/common/debug/LauncherAtom$ItemInfo;
    .registers 3

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/common/debug/LauncherAtom$ItemInfo;->itemCase_:I

    iput-object p1, p0, Lcom/android/common/debug/LauncherAtom$ItemInfo;->item_:Ljava/lang/Object;

    return-object p0
.end method

.method public setFolderIcon(Lcom/android/common/debug/LauncherAtom$FolderIcon;)Lcom/android/common/debug/LauncherAtom$ItemInfo;
    .registers 3

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v0, 0x9

    iput v0, p0, Lcom/android/common/debug/LauncherAtom$ItemInfo;->itemCase_:I

    iput-object p1, p0, Lcom/android/common/debug/LauncherAtom$ItemInfo;->item_:Ljava/lang/Object;

    return-object p0
.end method

.method public setShortcut(Lcom/android/common/debug/LauncherAtom$Shortcut;)Lcom/android/common/debug/LauncherAtom$ItemInfo;
    .registers 3

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x3

    iput v0, p0, Lcom/android/common/debug/LauncherAtom$ItemInfo;->itemCase_:I

    iput-object p1, p0, Lcom/android/common/debug/LauncherAtom$ItemInfo;->item_:Ljava/lang/Object;

    return-object p0
.end method

.method public setTask(Lcom/android/common/debug/LauncherAtom$Task;)Lcom/android/common/debug/LauncherAtom$ItemInfo;
    .registers 3

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x2

    iput v0, p0, Lcom/android/common/debug/LauncherAtom$ItemInfo;->itemCase_:I

    iput-object p1, p0, Lcom/android/common/debug/LauncherAtom$ItemInfo;->item_:Ljava/lang/Object;

    return-object p0
.end method

.method public setWidget(Lcom/android/common/debug/LauncherAtom$Widget;)Lcom/android/common/debug/LauncherAtom$ItemInfo;
    .registers 3

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x4

    iput v0, p0, Lcom/android/common/debug/LauncherAtom$ItemInfo;->itemCase_:I

    iput-object p1, p0, Lcom/android/common/debug/LauncherAtom$ItemInfo;->item_:Ljava/lang/Object;

    return-object p0
.end method

.method public writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lcom/android/common/debug/LauncherAtom$ItemInfo;->itemCase_:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_c

    iget-object v0, p0, Lcom/android/common/debug/LauncherAtom$ItemInfo;->item_:Ljava/lang/Object;

    check-cast v0, Lcom/google/protobuf/nano/MessageNano;

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    :cond_c
    iget v0, p0, Lcom/android/common/debug/LauncherAtom$ItemInfo;->itemCase_:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_18

    iget-object v0, p0, Lcom/android/common/debug/LauncherAtom$ItemInfo;->item_:Ljava/lang/Object;

    check-cast v0, Lcom/google/protobuf/nano/MessageNano;

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    :cond_18
    iget v0, p0, Lcom/android/common/debug/LauncherAtom$ItemInfo;->itemCase_:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_24

    iget-object v0, p0, Lcom/android/common/debug/LauncherAtom$ItemInfo;->item_:Ljava/lang/Object;

    check-cast v0, Lcom/google/protobuf/nano/MessageNano;

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    :cond_24
    iget v0, p0, Lcom/android/common/debug/LauncherAtom$ItemInfo;->itemCase_:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_30

    iget-object v0, p0, Lcom/android/common/debug/LauncherAtom$ItemInfo;->item_:Ljava/lang/Object;

    check-cast v0, Lcom/google/protobuf/nano/MessageNano;

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    :cond_30
    iget v0, p0, Lcom/android/common/debug/LauncherAtom$ItemInfo;->rank:I

    if-eqz v0, :cond_38

    const/4 v1, 0x5

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    :cond_38
    iget-boolean v0, p0, Lcom/android/common/debug/LauncherAtom$ItemInfo;->isWork:Z

    if-eqz v0, :cond_40

    const/4 v1, 0x6

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    :cond_40
    iget-object v0, p0, Lcom/android/common/debug/LauncherAtom$ItemInfo;->containerInfo:Lcom/android/common/debug/LauncherAtom$ContainerInfo;

    if-eqz v0, :cond_48

    const/4 v1, 0x7

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    :cond_48
    iget v0, p0, Lcom/android/common/debug/LauncherAtom$ItemInfo;->attribute:I

    if-eqz v0, :cond_51

    const/16 v1, 0x8

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    :cond_51
    iget v0, p0, Lcom/android/common/debug/LauncherAtom$ItemInfo;->itemCase_:I

    const/16 v1, 0x9

    if-ne v0, v1, :cond_5e

    iget-object v0, p0, Lcom/android/common/debug/LauncherAtom$ItemInfo;->item_:Ljava/lang/Object;

    check-cast v0, Lcom/google/protobuf/nano/MessageNano;

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    :cond_5e
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/MessageNano;->writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    return-void
.end method
