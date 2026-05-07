.class public final Lcom/oplus/cardservice/valueobject/model/nano/CardConfigInfoListProto;
.super Lcom/google/protobuf/nano/MessageNano;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/cardservice/valueobject/model/nano/CardConfigInfoListProto$CardConfigInfoProto;
    }
.end annotation


# static fields
.field private static volatile _emptyArray:[Lcom/oplus/cardservice/valueobject/model/nano/CardConfigInfoListProto;


# instance fields
.field public list:[Lcom/oplus/cardservice/valueobject/model/nano/CardConfigInfoListProto$CardConfigInfoProto;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/google/protobuf/nano/MessageNano;-><init>()V

    invoke-virtual {p0}, Lcom/oplus/cardservice/valueobject/model/nano/CardConfigInfoListProto;->clear()Lcom/oplus/cardservice/valueobject/model/nano/CardConfigInfoListProto;

    return-void
.end method

.method public static emptyArray()[Lcom/oplus/cardservice/valueobject/model/nano/CardConfigInfoListProto;
    .registers 2

    sget-object v0, Lcom/oplus/cardservice/valueobject/model/nano/CardConfigInfoListProto;->_emptyArray:[Lcom/oplus/cardservice/valueobject/model/nano/CardConfigInfoListProto;

    if-nez v0, :cond_15

    sget-object v0, Lcom/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v0

    :try_start_7
    sget-object v1, Lcom/oplus/cardservice/valueobject/model/nano/CardConfigInfoListProto;->_emptyArray:[Lcom/oplus/cardservice/valueobject/model/nano/CardConfigInfoListProto;

    if-nez v1, :cond_10

    const/4 v1, 0x0

    new-array v1, v1, [Lcom/oplus/cardservice/valueobject/model/nano/CardConfigInfoListProto;

    sput-object v1, Lcom/oplus/cardservice/valueobject/model/nano/CardConfigInfoListProto;->_emptyArray:[Lcom/oplus/cardservice/valueobject/model/nano/CardConfigInfoListProto;

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
    sget-object v0, Lcom/oplus/cardservice/valueobject/model/nano/CardConfigInfoListProto;->_emptyArray:[Lcom/oplus/cardservice/valueobject/model/nano/CardConfigInfoListProto;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/oplus/cardservice/valueobject/model/nano/CardConfigInfoListProto;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Lcom/oplus/cardservice/valueobject/model/nano/CardConfigInfoListProto;

    invoke-direct {v0}, Lcom/oplus/cardservice/valueobject/model/nano/CardConfigInfoListProto;-><init>()V

    invoke-virtual {v0, p0}, Lcom/oplus/cardservice/valueobject/model/nano/CardConfigInfoListProto;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/oplus/cardservice/valueobject/model/nano/CardConfigInfoListProto;

    move-result-object p0

    return-object p0
.end method

.method public static parseFrom([B)Lcom/oplus/cardservice/valueobject/model/nano/CardConfigInfoListProto;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    new-instance v0, Lcom/oplus/cardservice/valueobject/model/nano/CardConfigInfoListProto;

    invoke-direct {v0}, Lcom/oplus/cardservice/valueobject/model/nano/CardConfigInfoListProto;-><init>()V

    invoke-static {v0, p0}, Lcom/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/protobuf/nano/MessageNano;[B)Lcom/google/protobuf/nano/MessageNano;

    move-result-object p0

    check-cast p0, Lcom/oplus/cardservice/valueobject/model/nano/CardConfigInfoListProto;

    return-object p0
.end method


# virtual methods
.method public clear()Lcom/oplus/cardservice/valueobject/model/nano/CardConfigInfoListProto;
    .registers 2

    invoke-static {}, Lcom/oplus/cardservice/valueobject/model/nano/CardConfigInfoListProto$CardConfigInfoProto;->emptyArray()[Lcom/oplus/cardservice/valueobject/model/nano/CardConfigInfoListProto$CardConfigInfoProto;

    move-result-object v0

    iput-object v0, p0, Lcom/oplus/cardservice/valueobject/model/nano/CardConfigInfoListProto;->list:[Lcom/oplus/cardservice/valueobject/model/nano/CardConfigInfoListProto$CardConfigInfoProto;

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/protobuf/nano/MessageNano;->cachedSize:I

    return-object p0
.end method

.method public computeSerializedSize()I
    .registers 5

    invoke-super {p0}, Lcom/google/protobuf/nano/MessageNano;->computeSerializedSize()I

    move-result v0

    iget-object v1, p0, Lcom/oplus/cardservice/valueobject/model/nano/CardConfigInfoListProto;->list:[Lcom/oplus/cardservice/valueobject/model/nano/CardConfigInfoListProto$CardConfigInfoProto;

    if-eqz v1, :cond_1e

    array-length v1, v1

    if-lez v1, :cond_1e

    const/4 v1, 0x0

    :goto_c
    iget-object v2, p0, Lcom/oplus/cardservice/valueobject/model/nano/CardConfigInfoListProto;->list:[Lcom/oplus/cardservice/valueobject/model/nano/CardConfigInfoListProto$CardConfigInfoProto;

    array-length v3, v2

    if-ge v1, v3, :cond_1e

    aget-object v2, v2, v1

    if-eqz v2, :cond_1b

    const/4 v3, 0x1

    invoke-static {v3, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v2

    add-int/2addr v0, v2

    :cond_1b
    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    :cond_1e
    return v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/protobuf/nano/MessageNano;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/oplus/cardservice/valueobject/model/nano/CardConfigInfoListProto;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/oplus/cardservice/valueobject/model/nano/CardConfigInfoListProto;

    move-result-object p0

    return-object p0
.end method

.method public mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/oplus/cardservice/valueobject/model/nano/CardConfigInfoListProto;
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

    if-eqz v0, :cond_4a

    const/16 v1, 0xa

    if-eq v0, v1, :cond_11

    invoke-static {p1, v0}, Lcom/google/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v0

    if-nez v0, :cond_0

    return-object p0

    :cond_11
    invoke-static {p1, v1}, Lcom/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    iget-object v1, p0, Lcom/oplus/cardservice/valueobject/model/nano/CardConfigInfoListProto;->list:[Lcom/oplus/cardservice/valueobject/model/nano/CardConfigInfoListProto$CardConfigInfoProto;

    const/4 v2, 0x0

    if-nez v1, :cond_1c

    move v3, v2

    goto :goto_1d

    :cond_1c
    array-length v3, v1

    :goto_1d
    add-int/2addr v0, v3

    new-array v4, v0, [Lcom/oplus/cardservice/valueobject/model/nano/CardConfigInfoListProto$CardConfigInfoProto;

    if-eqz v3, :cond_25

    invoke-static {v1, v2, v4, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_25
    :goto_25
    add-int/lit8 v1, v0, -0x1

    if-ge v3, v1, :cond_3b

    new-instance v1, Lcom/oplus/cardservice/valueobject/model/nano/CardConfigInfoListProto$CardConfigInfoProto;

    invoke-direct {v1}, Lcom/oplus/cardservice/valueobject/model/nano/CardConfigInfoListProto$CardConfigInfoProto;-><init>()V

    aput-object v1, v4, v3

    aget-object v1, v4, v3

    invoke-virtual {p1, v1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    add-int/lit8 v3, v3, 0x1

    goto :goto_25

    :cond_3b
    new-instance v0, Lcom/oplus/cardservice/valueobject/model/nano/CardConfigInfoListProto$CardConfigInfoProto;

    invoke-direct {v0}, Lcom/oplus/cardservice/valueobject/model/nano/CardConfigInfoListProto$CardConfigInfoProto;-><init>()V

    aput-object v0, v4, v3

    aget-object v0, v4, v3

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    iput-object v4, p0, Lcom/oplus/cardservice/valueobject/model/nano/CardConfigInfoListProto;->list:[Lcom/oplus/cardservice/valueobject/model/nano/CardConfigInfoListProto$CardConfigInfoProto;

    goto :goto_0

    :cond_4a
    return-object p0
.end method

.method public writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/oplus/cardservice/valueobject/model/nano/CardConfigInfoListProto;->list:[Lcom/oplus/cardservice/valueobject/model/nano/CardConfigInfoListProto$CardConfigInfoProto;

    if-eqz v0, :cond_18

    array-length v0, v0

    if-lez v0, :cond_18

    const/4 v0, 0x0

    :goto_8
    iget-object v1, p0, Lcom/oplus/cardservice/valueobject/model/nano/CardConfigInfoListProto;->list:[Lcom/oplus/cardservice/valueobject/model/nano/CardConfigInfoListProto$CardConfigInfoProto;

    array-length v2, v1

    if-ge v0, v2, :cond_18

    aget-object v1, v1, v0

    if-eqz v1, :cond_15

    const/4 v2, 0x1

    invoke-virtual {p1, v2, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    :cond_15
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    :cond_18
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/MessageNano;->writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    return-void
.end method
