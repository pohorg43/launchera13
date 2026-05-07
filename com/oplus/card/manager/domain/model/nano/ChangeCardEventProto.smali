.class public final Lcom/oplus/card/manager/domain/model/nano/ChangeCardEventProto;
.super Lcom/google/protobuf/nano/MessageNano;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/card/manager/domain/model/nano/ChangeCardEventProto$LOCATION;,
        Lcom/oplus/card/manager/domain/model/nano/ChangeCardEventProto$POSITION;,
        Lcom/oplus/card/manager/domain/model/nano/ChangeCardEventProto$ACTION;
    }
.end annotation


# static fields
.field private static volatile _emptyArray:[Lcom/oplus/card/manager/domain/model/nano/ChangeCardEventProto;


# instance fields
.field public action:I

.field public cardId:I

.field public index:I

.field public location:I

.field public position:I

.field public type:I


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/google/protobuf/nano/MessageNano;-><init>()V

    invoke-virtual {p0}, Lcom/oplus/card/manager/domain/model/nano/ChangeCardEventProto;->clear()Lcom/oplus/card/manager/domain/model/nano/ChangeCardEventProto;

    return-void
.end method

.method public static emptyArray()[Lcom/oplus/card/manager/domain/model/nano/ChangeCardEventProto;
    .registers 2

    sget-object v0, Lcom/oplus/card/manager/domain/model/nano/ChangeCardEventProto;->_emptyArray:[Lcom/oplus/card/manager/domain/model/nano/ChangeCardEventProto;

    if-nez v0, :cond_15

    sget-object v0, Lcom/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v0

    :try_start_7
    sget-object v1, Lcom/oplus/card/manager/domain/model/nano/ChangeCardEventProto;->_emptyArray:[Lcom/oplus/card/manager/domain/model/nano/ChangeCardEventProto;

    if-nez v1, :cond_10

    const/4 v1, 0x0

    new-array v1, v1, [Lcom/oplus/card/manager/domain/model/nano/ChangeCardEventProto;

    sput-object v1, Lcom/oplus/card/manager/domain/model/nano/ChangeCardEventProto;->_emptyArray:[Lcom/oplus/card/manager/domain/model/nano/ChangeCardEventProto;

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
    sget-object v0, Lcom/oplus/card/manager/domain/model/nano/ChangeCardEventProto;->_emptyArray:[Lcom/oplus/card/manager/domain/model/nano/ChangeCardEventProto;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/oplus/card/manager/domain/model/nano/ChangeCardEventProto;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Lcom/oplus/card/manager/domain/model/nano/ChangeCardEventProto;

    invoke-direct {v0}, Lcom/oplus/card/manager/domain/model/nano/ChangeCardEventProto;-><init>()V

    invoke-virtual {v0, p0}, Lcom/oplus/card/manager/domain/model/nano/ChangeCardEventProto;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/oplus/card/manager/domain/model/nano/ChangeCardEventProto;

    move-result-object p0

    return-object p0
.end method

.method public static parseFrom([B)Lcom/oplus/card/manager/domain/model/nano/ChangeCardEventProto;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    new-instance v0, Lcom/oplus/card/manager/domain/model/nano/ChangeCardEventProto;

    invoke-direct {v0}, Lcom/oplus/card/manager/domain/model/nano/ChangeCardEventProto;-><init>()V

    invoke-static {v0, p0}, Lcom/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/protobuf/nano/MessageNano;[B)Lcom/google/protobuf/nano/MessageNano;

    move-result-object p0

    check-cast p0, Lcom/oplus/card/manager/domain/model/nano/ChangeCardEventProto;

    return-object p0
.end method


# virtual methods
.method public clear()Lcom/oplus/card/manager/domain/model/nano/ChangeCardEventProto;
    .registers 4

    const/4 v0, 0x1

    iput v0, p0, Lcom/oplus/card/manager/domain/model/nano/ChangeCardEventProto;->action:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/oplus/card/manager/domain/model/nano/ChangeCardEventProto;->type:I

    const/4 v1, -0x1

    iput v1, p0, Lcom/oplus/card/manager/domain/model/nano/ChangeCardEventProto;->cardId:I

    const/4 v2, 0x2

    iput v2, p0, Lcom/oplus/card/manager/domain/model/nano/ChangeCardEventProto;->location:I

    iput v2, p0, Lcom/oplus/card/manager/domain/model/nano/ChangeCardEventProto;->position:I

    iput v0, p0, Lcom/oplus/card/manager/domain/model/nano/ChangeCardEventProto;->index:I

    iput v1, p0, Lcom/google/protobuf/nano/MessageNano;->cachedSize:I

    return-object p0
.end method

.method public computeSerializedSize()I
    .registers 5

    invoke-super {p0}, Lcom/google/protobuf/nano/MessageNano;->computeSerializedSize()I

    move-result v0

    iget v1, p0, Lcom/oplus/card/manager/domain/model/nano/ChangeCardEventProto;->action:I

    const/4 v2, 0x1

    invoke-static {v2, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v1, v0

    iget v0, p0, Lcom/oplus/card/manager/domain/model/nano/ChangeCardEventProto;->type:I

    const/4 v2, 0x2

    invoke-static {v2, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v0

    add-int/2addr v0, v1

    iget v1, p0, Lcom/oplus/card/manager/domain/model/nano/ChangeCardEventProto;->cardId:I

    const/4 v3, -0x1

    if-eq v1, v3, :cond_1f

    const/4 v3, 0x3

    invoke-static {v3, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_1f
    iget v1, p0, Lcom/oplus/card/manager/domain/model/nano/ChangeCardEventProto;->location:I

    if-eq v1, v2, :cond_29

    const/4 v3, 0x4

    invoke-static {v3, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_29
    iget v1, p0, Lcom/oplus/card/manager/domain/model/nano/ChangeCardEventProto;->position:I

    if-eq v1, v2, :cond_33

    const/4 v2, 0x5

    invoke-static {v2, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_33
    iget p0, p0, Lcom/oplus/card/manager/domain/model/nano/ChangeCardEventProto;->index:I

    if-eqz p0, :cond_3d

    const/4 v1, 0x6

    invoke-static {v1, p0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result p0

    add-int/2addr v0, p0

    :cond_3d
    return v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/protobuf/nano/MessageNano;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/oplus/card/manager/domain/model/nano/ChangeCardEventProto;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/oplus/card/manager/domain/model/nano/ChangeCardEventProto;

    move-result-object p0

    return-object p0
.end method

.method public mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/oplus/card/manager/domain/model/nano/ChangeCardEventProto;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    if-eqz v0, :cond_60

    const/16 v1, 0x8

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eq v0, v1, :cond_54

    const/16 v1, 0x10

    if-eq v0, v1, :cond_4d

    const/16 v1, 0x18

    if-eq v0, v1, :cond_46

    const/16 v1, 0x20

    if-eq v0, v1, :cond_3a

    const/16 v1, 0x28

    if-eq v0, v1, :cond_2e

    const/16 v1, 0x30

    if-eq v0, v1, :cond_27

    invoke-static {p1, v0}, Lcom/google/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v0

    if-nez v0, :cond_0

    return-object p0

    :cond_27
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/oplus/card/manager/domain/model/nano/ChangeCardEventProto;->index:I

    goto :goto_0

    :cond_2e
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    if-eq v0, v3, :cond_37

    if-eq v0, v2, :cond_37

    goto :goto_0

    :cond_37
    iput v0, p0, Lcom/oplus/card/manager/domain/model/nano/ChangeCardEventProto;->position:I

    goto :goto_0

    :cond_3a
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    if-eq v0, v3, :cond_43

    if-eq v0, v2, :cond_43

    goto :goto_0

    :cond_43
    iput v0, p0, Lcom/oplus/card/manager/domain/model/nano/ChangeCardEventProto;->location:I

    goto :goto_0

    :cond_46
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/oplus/card/manager/domain/model/nano/ChangeCardEventProto;->cardId:I

    goto :goto_0

    :cond_4d
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/oplus/card/manager/domain/model/nano/ChangeCardEventProto;->type:I

    goto :goto_0

    :cond_54
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    if-eq v0, v3, :cond_5d

    if-eq v0, v2, :cond_5d

    goto :goto_0

    :cond_5d
    iput v0, p0, Lcom/oplus/card/manager/domain/model/nano/ChangeCardEventProto;->action:I

    goto :goto_0

    :cond_60
    return-object p0
.end method

.method public writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lcom/oplus/card/manager/domain/model/nano/ChangeCardEventProto;->action:I

    const/4 v1, 0x1

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    iget v0, p0, Lcom/oplus/card/manager/domain/model/nano/ChangeCardEventProto;->type:I

    const/4 v1, 0x2

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    iget v0, p0, Lcom/oplus/card/manager/domain/model/nano/ChangeCardEventProto;->cardId:I

    const/4 v2, -0x1

    if-eq v0, v2, :cond_15

    const/4 v2, 0x3

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    :cond_15
    iget v0, p0, Lcom/oplus/card/manager/domain/model/nano/ChangeCardEventProto;->location:I

    if-eq v0, v1, :cond_1d

    const/4 v2, 0x4

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    :cond_1d
    iget v0, p0, Lcom/oplus/card/manager/domain/model/nano/ChangeCardEventProto;->position:I

    if-eq v0, v1, :cond_25

    const/4 v1, 0x5

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    :cond_25
    iget v0, p0, Lcom/oplus/card/manager/domain/model/nano/ChangeCardEventProto;->index:I

    if-eqz v0, :cond_2d

    const/4 v1, 0x6

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    :cond_2d
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/MessageNano;->writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    return-void
.end method
