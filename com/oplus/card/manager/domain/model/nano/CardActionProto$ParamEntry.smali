.class public final Lcom/oplus/card/manager/domain/model/nano/CardActionProto$ParamEntry;
.super Lcom/google/protobuf/nano/MessageNano;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/card/manager/domain/model/nano/CardActionProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ParamEntry"
.end annotation


# static fields
.field private static volatile _emptyArray:[Lcom/oplus/card/manager/domain/model/nano/CardActionProto$ParamEntry;


# instance fields
.field public key:Ljava/lang/String;

.field public value:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/google/protobuf/nano/MessageNano;-><init>()V

    invoke-virtual {p0}, Lcom/oplus/card/manager/domain/model/nano/CardActionProto$ParamEntry;->clear()Lcom/oplus/card/manager/domain/model/nano/CardActionProto$ParamEntry;

    return-void
.end method

.method public static emptyArray()[Lcom/oplus/card/manager/domain/model/nano/CardActionProto$ParamEntry;
    .registers 2

    sget-object v0, Lcom/oplus/card/manager/domain/model/nano/CardActionProto$ParamEntry;->_emptyArray:[Lcom/oplus/card/manager/domain/model/nano/CardActionProto$ParamEntry;

    if-nez v0, :cond_15

    sget-object v0, Lcom/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v0

    :try_start_7
    sget-object v1, Lcom/oplus/card/manager/domain/model/nano/CardActionProto$ParamEntry;->_emptyArray:[Lcom/oplus/card/manager/domain/model/nano/CardActionProto$ParamEntry;

    if-nez v1, :cond_10

    const/4 v1, 0x0

    new-array v1, v1, [Lcom/oplus/card/manager/domain/model/nano/CardActionProto$ParamEntry;

    sput-object v1, Lcom/oplus/card/manager/domain/model/nano/CardActionProto$ParamEntry;->_emptyArray:[Lcom/oplus/card/manager/domain/model/nano/CardActionProto$ParamEntry;

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
    sget-object v0, Lcom/oplus/card/manager/domain/model/nano/CardActionProto$ParamEntry;->_emptyArray:[Lcom/oplus/card/manager/domain/model/nano/CardActionProto$ParamEntry;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/oplus/card/manager/domain/model/nano/CardActionProto$ParamEntry;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Lcom/oplus/card/manager/domain/model/nano/CardActionProto$ParamEntry;

    invoke-direct {v0}, Lcom/oplus/card/manager/domain/model/nano/CardActionProto$ParamEntry;-><init>()V

    invoke-virtual {v0, p0}, Lcom/oplus/card/manager/domain/model/nano/CardActionProto$ParamEntry;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/oplus/card/manager/domain/model/nano/CardActionProto$ParamEntry;

    move-result-object p0

    return-object p0
.end method

.method public static parseFrom([B)Lcom/oplus/card/manager/domain/model/nano/CardActionProto$ParamEntry;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    new-instance v0, Lcom/oplus/card/manager/domain/model/nano/CardActionProto$ParamEntry;

    invoke-direct {v0}, Lcom/oplus/card/manager/domain/model/nano/CardActionProto$ParamEntry;-><init>()V

    invoke-static {v0, p0}, Lcom/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/protobuf/nano/MessageNano;[B)Lcom/google/protobuf/nano/MessageNano;

    move-result-object p0

    check-cast p0, Lcom/oplus/card/manager/domain/model/nano/CardActionProto$ParamEntry;

    return-object p0
.end method


# virtual methods
.method public clear()Lcom/oplus/card/manager/domain/model/nano/CardActionProto$ParamEntry;
    .registers 2

    const-string v0, ""

    iput-object v0, p0, Lcom/oplus/card/manager/domain/model/nano/CardActionProto$ParamEntry;->key:Ljava/lang/String;

    iput-object v0, p0, Lcom/oplus/card/manager/domain/model/nano/CardActionProto$ParamEntry;->value:Ljava/lang/String;

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/protobuf/nano/MessageNano;->cachedSize:I

    return-object p0
.end method

.method public computeSerializedSize()I
    .registers 5

    invoke-super {p0}, Lcom/google/protobuf/nano/MessageNano;->computeSerializedSize()I

    move-result v0

    iget-object v1, p0, Lcom/oplus/card/manager/domain/model/nano/CardActionProto$ParamEntry;->key:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_16

    const/4 v1, 0x1

    iget-object v3, p0, Lcom/oplus/card/manager/domain/model/nano/CardActionProto$ParamEntry;->key:Ljava/lang/String;

    invoke-static {v1, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_16
    iget-object v1, p0, Lcom/oplus/card/manager/domain/model/nano/CardActionProto$ParamEntry;->value:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_26

    const/4 v1, 0x2

    iget-object p0, p0, Lcom/oplus/card/manager/domain/model/nano/CardActionProto$ParamEntry;->value:Ljava/lang/String;

    invoke-static {v1, p0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result p0

    add-int/2addr v0, p0

    :cond_26
    return v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/protobuf/nano/MessageNano;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/oplus/card/manager/domain/model/nano/CardActionProto$ParamEntry;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/oplus/card/manager/domain/model/nano/CardActionProto$ParamEntry;

    move-result-object p0

    return-object p0
.end method

.method public mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/oplus/card/manager/domain/model/nano/CardActionProto$ParamEntry;
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

    if-eqz v0, :cond_23

    const/16 v1, 0xa

    if-eq v0, v1, :cond_1c

    const/16 v1, 0x12

    if-eq v0, v1, :cond_15

    invoke-static {p1, v0}, Lcom/google/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v0

    if-nez v0, :cond_0

    return-object p0

    :cond_15
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oplus/card/manager/domain/model/nano/CardActionProto$ParamEntry;->value:Ljava/lang/String;

    goto :goto_0

    :cond_1c
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oplus/card/manager/domain/model/nano/CardActionProto$ParamEntry;->key:Ljava/lang/String;

    goto :goto_0

    :cond_23
    return-object p0
.end method

.method public writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/oplus/card/manager/domain/model/nano/CardActionProto$ParamEntry;->key:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_10

    const/4 v0, 0x1

    iget-object v2, p0, Lcom/oplus/card/manager/domain/model/nano/CardActionProto$ParamEntry;->key:Ljava/lang/String;

    invoke-virtual {p1, v0, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    :cond_10
    iget-object v0, p0, Lcom/oplus/card/manager/domain/model/nano/CardActionProto$ParamEntry;->value:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1e

    const/4 v0, 0x2

    iget-object v1, p0, Lcom/oplus/card/manager/domain/model/nano/CardActionProto$ParamEntry;->value:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    :cond_1e
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/MessageNano;->writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    return-void
.end method
