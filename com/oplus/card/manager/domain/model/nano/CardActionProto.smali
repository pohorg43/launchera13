.class public final Lcom/oplus/card/manager/domain/model/nano/CardActionProto;
.super Lcom/google/protobuf/nano/MessageNano;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/card/manager/domain/model/nano/CardActionProto$ParamEntry;,
        Lcom/oplus/card/manager/domain/model/nano/CardActionProto$ACTION;
    }
.end annotation


# static fields
.field private static volatile _emptyArray:[Lcom/oplus/card/manager/domain/model/nano/CardActionProto;


# instance fields
.field public action:I

.field public cardId:I

.field public cardType:I

.field public hostId:I

.field public param:[Lcom/oplus/card/manager/domain/model/nano/CardActionProto$ParamEntry;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/google/protobuf/nano/MessageNano;-><init>()V

    invoke-virtual {p0}, Lcom/oplus/card/manager/domain/model/nano/CardActionProto;->clear()Lcom/oplus/card/manager/domain/model/nano/CardActionProto;

    return-void
.end method

.method public static emptyArray()[Lcom/oplus/card/manager/domain/model/nano/CardActionProto;
    .registers 2

    sget-object v0, Lcom/oplus/card/manager/domain/model/nano/CardActionProto;->_emptyArray:[Lcom/oplus/card/manager/domain/model/nano/CardActionProto;

    if-nez v0, :cond_15

    sget-object v0, Lcom/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v0

    :try_start_7
    sget-object v1, Lcom/oplus/card/manager/domain/model/nano/CardActionProto;->_emptyArray:[Lcom/oplus/card/manager/domain/model/nano/CardActionProto;

    if-nez v1, :cond_10

    const/4 v1, 0x0

    new-array v1, v1, [Lcom/oplus/card/manager/domain/model/nano/CardActionProto;

    sput-object v1, Lcom/oplus/card/manager/domain/model/nano/CardActionProto;->_emptyArray:[Lcom/oplus/card/manager/domain/model/nano/CardActionProto;

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
    sget-object v0, Lcom/oplus/card/manager/domain/model/nano/CardActionProto;->_emptyArray:[Lcom/oplus/card/manager/domain/model/nano/CardActionProto;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/oplus/card/manager/domain/model/nano/CardActionProto;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Lcom/oplus/card/manager/domain/model/nano/CardActionProto;

    invoke-direct {v0}, Lcom/oplus/card/manager/domain/model/nano/CardActionProto;-><init>()V

    invoke-virtual {v0, p0}, Lcom/oplus/card/manager/domain/model/nano/CardActionProto;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/oplus/card/manager/domain/model/nano/CardActionProto;

    move-result-object p0

    return-object p0
.end method

.method public static parseFrom([B)Lcom/oplus/card/manager/domain/model/nano/CardActionProto;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    new-instance v0, Lcom/oplus/card/manager/domain/model/nano/CardActionProto;

    invoke-direct {v0}, Lcom/oplus/card/manager/domain/model/nano/CardActionProto;-><init>()V

    invoke-static {v0, p0}, Lcom/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/protobuf/nano/MessageNano;[B)Lcom/google/protobuf/nano/MessageNano;

    move-result-object p0

    check-cast p0, Lcom/oplus/card/manager/domain/model/nano/CardActionProto;

    return-object p0
.end method


# virtual methods
.method public clear()Lcom/oplus/card/manager/domain/model/nano/CardActionProto;
    .registers 2

    const/4 v0, 0x0

    iput v0, p0, Lcom/oplus/card/manager/domain/model/nano/CardActionProto;->cardType:I

    iput v0, p0, Lcom/oplus/card/manager/domain/model/nano/CardActionProto;->cardId:I

    iput v0, p0, Lcom/oplus/card/manager/domain/model/nano/CardActionProto;->hostId:I

    iput v0, p0, Lcom/oplus/card/manager/domain/model/nano/CardActionProto;->action:I

    invoke-static {}, Lcom/oplus/card/manager/domain/model/nano/CardActionProto$ParamEntry;->emptyArray()[Lcom/oplus/card/manager/domain/model/nano/CardActionProto$ParamEntry;

    move-result-object v0

    iput-object v0, p0, Lcom/oplus/card/manager/domain/model/nano/CardActionProto;->param:[Lcom/oplus/card/manager/domain/model/nano/CardActionProto$ParamEntry;

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/protobuf/nano/MessageNano;->cachedSize:I

    return-object p0
.end method

.method public computeSerializedSize()I
    .registers 5

    invoke-super {p0}, Lcom/google/protobuf/nano/MessageNano;->computeSerializedSize()I

    move-result v0

    iget v1, p0, Lcom/oplus/card/manager/domain/model/nano/CardActionProto;->cardType:I

    const/4 v2, 0x1

    invoke-static {v2, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v1, v0

    iget v0, p0, Lcom/oplus/card/manager/domain/model/nano/CardActionProto;->cardId:I

    const/4 v2, 0x2

    invoke-static {v2, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v0

    add-int/2addr v0, v1

    iget v1, p0, Lcom/oplus/card/manager/domain/model/nano/CardActionProto;->hostId:I

    const/4 v2, 0x3

    invoke-static {v2, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v1, v0

    iget v0, p0, Lcom/oplus/card/manager/domain/model/nano/CardActionProto;->action:I

    const/4 v2, 0x4

    invoke-static {v2, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v0

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/oplus/card/manager/domain/model/nano/CardActionProto;->param:[Lcom/oplus/card/manager/domain/model/nano/CardActionProto$ParamEntry;

    if-eqz v1, :cond_3e

    array-length v1, v1

    if-lez v1, :cond_3e

    const/4 v1, 0x0

    :goto_2c
    iget-object v2, p0, Lcom/oplus/card/manager/domain/model/nano/CardActionProto;->param:[Lcom/oplus/card/manager/domain/model/nano/CardActionProto$ParamEntry;

    array-length v3, v2

    if-ge v1, v3, :cond_3e

    aget-object v2, v2, v1

    if-eqz v2, :cond_3b

    const/4 v3, 0x5

    invoke-static {v3, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v2

    add-int/2addr v0, v2

    :cond_3b
    add-int/lit8 v1, v1, 0x1

    goto :goto_2c

    :cond_3e
    return v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/protobuf/nano/MessageNano;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/oplus/card/manager/domain/model/nano/CardActionProto;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/oplus/card/manager/domain/model/nano/CardActionProto;

    move-result-object p0

    return-object p0
.end method

.method public mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/oplus/card/manager/domain/model/nano/CardActionProto;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    if-eqz v0, :cond_76

    const/16 v1, 0x8

    if-eq v0, v1, :cond_6f

    const/16 v1, 0x10

    if-eq v0, v1, :cond_68

    const/16 v1, 0x18

    if-eq v0, v1, :cond_61

    const/16 v1, 0x20

    if-eq v0, v1, :cond_5a

    const/16 v1, 0x2a

    if-eq v0, v1, :cond_21

    invoke-static {p1, v0}, Lcom/google/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v0

    if-nez v0, :cond_0

    return-object p0

    :cond_21
    invoke-static {p1, v1}, Lcom/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    iget-object v1, p0, Lcom/oplus/card/manager/domain/model/nano/CardActionProto;->param:[Lcom/oplus/card/manager/domain/model/nano/CardActionProto$ParamEntry;

    const/4 v2, 0x0

    if-nez v1, :cond_2c

    move v3, v2

    goto :goto_2d

    :cond_2c
    array-length v3, v1

    :goto_2d
    add-int/2addr v0, v3

    new-array v4, v0, [Lcom/oplus/card/manager/domain/model/nano/CardActionProto$ParamEntry;

    if-eqz v3, :cond_35

    invoke-static {v1, v2, v4, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_35
    :goto_35
    add-int/lit8 v1, v0, -0x1

    if-ge v3, v1, :cond_4b

    new-instance v1, Lcom/oplus/card/manager/domain/model/nano/CardActionProto$ParamEntry;

    invoke-direct {v1}, Lcom/oplus/card/manager/domain/model/nano/CardActionProto$ParamEntry;-><init>()V

    aput-object v1, v4, v3

    aget-object v1, v4, v3

    invoke-virtual {p1, v1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    add-int/lit8 v3, v3, 0x1

    goto :goto_35

    :cond_4b
    new-instance v0, Lcom/oplus/card/manager/domain/model/nano/CardActionProto$ParamEntry;

    invoke-direct {v0}, Lcom/oplus/card/manager/domain/model/nano/CardActionProto$ParamEntry;-><init>()V

    aput-object v0, v4, v3

    aget-object v0, v4, v3

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    iput-object v4, p0, Lcom/oplus/card/manager/domain/model/nano/CardActionProto;->param:[Lcom/oplus/card/manager/domain/model/nano/CardActionProto$ParamEntry;

    goto :goto_0

    :cond_5a
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/oplus/card/manager/domain/model/nano/CardActionProto;->action:I

    goto :goto_0

    :cond_61
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/oplus/card/manager/domain/model/nano/CardActionProto;->hostId:I

    goto :goto_0

    :cond_68
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/oplus/card/manager/domain/model/nano/CardActionProto;->cardId:I

    goto :goto_0

    :cond_6f
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/oplus/card/manager/domain/model/nano/CardActionProto;->cardType:I

    goto :goto_0

    :cond_76
    return-object p0
.end method

.method public writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lcom/oplus/card/manager/domain/model/nano/CardActionProto;->cardType:I

    const/4 v1, 0x1

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    iget v0, p0, Lcom/oplus/card/manager/domain/model/nano/CardActionProto;->cardId:I

    const/4 v1, 0x2

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    iget v0, p0, Lcom/oplus/card/manager/domain/model/nano/CardActionProto;->hostId:I

    const/4 v1, 0x3

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    iget v0, p0, Lcom/oplus/card/manager/domain/model/nano/CardActionProto;->action:I

    const/4 v1, 0x4

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    iget-object v0, p0, Lcom/oplus/card/manager/domain/model/nano/CardActionProto;->param:[Lcom/oplus/card/manager/domain/model/nano/CardActionProto$ParamEntry;

    if-eqz v0, :cond_30

    array-length v0, v0

    if-lez v0, :cond_30

    const/4 v0, 0x0

    :goto_20
    iget-object v1, p0, Lcom/oplus/card/manager/domain/model/nano/CardActionProto;->param:[Lcom/oplus/card/manager/domain/model/nano/CardActionProto$ParamEntry;

    array-length v2, v1

    if-ge v0, v2, :cond_30

    aget-object v1, v1, v0

    if-eqz v1, :cond_2d

    const/4 v2, 0x5

    invoke-virtual {p1, v2, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    :cond_2d
    add-int/lit8 v0, v0, 0x1

    goto :goto_20

    :cond_30
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/MessageNano;->writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    return-void
.end method
