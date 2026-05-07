.class public final Lcom/oplus/card/config/domain/model/nano/OperatingRecommendInfoListProto$OperatingRecommendInfo;
.super Lcom/google/protobuf/nano/MessageNano;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/card/config/domain/model/nano/OperatingRecommendInfoListProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "OperatingRecommendInfo"
.end annotation


# static fields
.field private static volatile _emptyArray:[Lcom/oplus/card/config/domain/model/nano/OperatingRecommendInfoListProto$OperatingRecommendInfo;


# instance fields
.field public groupId:I

.field public order:I

.field public recommendType:I

.field public type:I

.field public weight:I


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/google/protobuf/nano/MessageNano;-><init>()V

    invoke-virtual {p0}, Lcom/oplus/card/config/domain/model/nano/OperatingRecommendInfoListProto$OperatingRecommendInfo;->clear()Lcom/oplus/card/config/domain/model/nano/OperatingRecommendInfoListProto$OperatingRecommendInfo;

    return-void
.end method

.method public static emptyArray()[Lcom/oplus/card/config/domain/model/nano/OperatingRecommendInfoListProto$OperatingRecommendInfo;
    .registers 2

    sget-object v0, Lcom/oplus/card/config/domain/model/nano/OperatingRecommendInfoListProto$OperatingRecommendInfo;->_emptyArray:[Lcom/oplus/card/config/domain/model/nano/OperatingRecommendInfoListProto$OperatingRecommendInfo;

    if-nez v0, :cond_15

    sget-object v0, Lcom/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v0

    :try_start_7
    sget-object v1, Lcom/oplus/card/config/domain/model/nano/OperatingRecommendInfoListProto$OperatingRecommendInfo;->_emptyArray:[Lcom/oplus/card/config/domain/model/nano/OperatingRecommendInfoListProto$OperatingRecommendInfo;

    if-nez v1, :cond_10

    const/4 v1, 0x0

    new-array v1, v1, [Lcom/oplus/card/config/domain/model/nano/OperatingRecommendInfoListProto$OperatingRecommendInfo;

    sput-object v1, Lcom/oplus/card/config/domain/model/nano/OperatingRecommendInfoListProto$OperatingRecommendInfo;->_emptyArray:[Lcom/oplus/card/config/domain/model/nano/OperatingRecommendInfoListProto$OperatingRecommendInfo;

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
    sget-object v0, Lcom/oplus/card/config/domain/model/nano/OperatingRecommendInfoListProto$OperatingRecommendInfo;->_emptyArray:[Lcom/oplus/card/config/domain/model/nano/OperatingRecommendInfoListProto$OperatingRecommendInfo;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/oplus/card/config/domain/model/nano/OperatingRecommendInfoListProto$OperatingRecommendInfo;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Lcom/oplus/card/config/domain/model/nano/OperatingRecommendInfoListProto$OperatingRecommendInfo;

    invoke-direct {v0}, Lcom/oplus/card/config/domain/model/nano/OperatingRecommendInfoListProto$OperatingRecommendInfo;-><init>()V

    invoke-virtual {v0, p0}, Lcom/oplus/card/config/domain/model/nano/OperatingRecommendInfoListProto$OperatingRecommendInfo;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/oplus/card/config/domain/model/nano/OperatingRecommendInfoListProto$OperatingRecommendInfo;

    move-result-object p0

    return-object p0
.end method

.method public static parseFrom([B)Lcom/oplus/card/config/domain/model/nano/OperatingRecommendInfoListProto$OperatingRecommendInfo;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    new-instance v0, Lcom/oplus/card/config/domain/model/nano/OperatingRecommendInfoListProto$OperatingRecommendInfo;

    invoke-direct {v0}, Lcom/oplus/card/config/domain/model/nano/OperatingRecommendInfoListProto$OperatingRecommendInfo;-><init>()V

    invoke-static {v0, p0}, Lcom/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/protobuf/nano/MessageNano;[B)Lcom/google/protobuf/nano/MessageNano;

    move-result-object p0

    check-cast p0, Lcom/oplus/card/config/domain/model/nano/OperatingRecommendInfoListProto$OperatingRecommendInfo;

    return-object p0
.end method


# virtual methods
.method public clear()Lcom/oplus/card/config/domain/model/nano/OperatingRecommendInfoListProto$OperatingRecommendInfo;
    .registers 2

    const/4 v0, 0x0

    iput v0, p0, Lcom/oplus/card/config/domain/model/nano/OperatingRecommendInfoListProto$OperatingRecommendInfo;->groupId:I

    iput v0, p0, Lcom/oplus/card/config/domain/model/nano/OperatingRecommendInfoListProto$OperatingRecommendInfo;->type:I

    iput v0, p0, Lcom/oplus/card/config/domain/model/nano/OperatingRecommendInfoListProto$OperatingRecommendInfo;->order:I

    iput v0, p0, Lcom/oplus/card/config/domain/model/nano/OperatingRecommendInfoListProto$OperatingRecommendInfo;->weight:I

    iput v0, p0, Lcom/oplus/card/config/domain/model/nano/OperatingRecommendInfoListProto$OperatingRecommendInfo;->recommendType:I

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/protobuf/nano/MessageNano;->cachedSize:I

    return-object p0
.end method

.method public computeSerializedSize()I
    .registers 4

    invoke-super {p0}, Lcom/google/protobuf/nano/MessageNano;->computeSerializedSize()I

    move-result v0

    iget v1, p0, Lcom/oplus/card/config/domain/model/nano/OperatingRecommendInfoListProto$OperatingRecommendInfo;->groupId:I

    const/4 v2, 0x1

    invoke-static {v2, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v1, v0

    iget v0, p0, Lcom/oplus/card/config/domain/model/nano/OperatingRecommendInfoListProto$OperatingRecommendInfo;->type:I

    const/4 v2, 0x2

    invoke-static {v2, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v0

    add-int/2addr v0, v1

    iget v1, p0, Lcom/oplus/card/config/domain/model/nano/OperatingRecommendInfoListProto$OperatingRecommendInfo;->order:I

    const/4 v2, 0x3

    invoke-static {v2, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v1, v0

    iget v0, p0, Lcom/oplus/card/config/domain/model/nano/OperatingRecommendInfoListProto$OperatingRecommendInfo;->weight:I

    const/4 v2, 0x4

    invoke-static {v2, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v0

    add-int/2addr v0, v1

    iget p0, p0, Lcom/oplus/card/config/domain/model/nano/OperatingRecommendInfoListProto$OperatingRecommendInfo;->recommendType:I

    const/4 v1, 0x5

    invoke-static {v1, p0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/protobuf/nano/MessageNano;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/oplus/card/config/domain/model/nano/OperatingRecommendInfoListProto$OperatingRecommendInfo;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/oplus/card/config/domain/model/nano/OperatingRecommendInfoListProto$OperatingRecommendInfo;

    move-result-object p0

    return-object p0
.end method

.method public mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/oplus/card/config/domain/model/nano/OperatingRecommendInfoListProto$OperatingRecommendInfo;
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

    if-eqz v0, :cond_44

    const/16 v1, 0x8

    if-eq v0, v1, :cond_3d

    const/16 v1, 0x10

    if-eq v0, v1, :cond_36

    const/16 v1, 0x18

    if-eq v0, v1, :cond_2f

    const/16 v1, 0x20

    if-eq v0, v1, :cond_28

    const/16 v1, 0x28

    if-eq v0, v1, :cond_21

    invoke-static {p1, v0}, Lcom/google/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v0

    if-nez v0, :cond_0

    return-object p0

    :cond_21
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/oplus/card/config/domain/model/nano/OperatingRecommendInfoListProto$OperatingRecommendInfo;->recommendType:I

    goto :goto_0

    :cond_28
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/oplus/card/config/domain/model/nano/OperatingRecommendInfoListProto$OperatingRecommendInfo;->weight:I

    goto :goto_0

    :cond_2f
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/oplus/card/config/domain/model/nano/OperatingRecommendInfoListProto$OperatingRecommendInfo;->order:I

    goto :goto_0

    :cond_36
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/oplus/card/config/domain/model/nano/OperatingRecommendInfoListProto$OperatingRecommendInfo;->type:I

    goto :goto_0

    :cond_3d
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/oplus/card/config/domain/model/nano/OperatingRecommendInfoListProto$OperatingRecommendInfo;->groupId:I

    goto :goto_0

    :cond_44
    return-object p0
.end method

.method public writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lcom/oplus/card/config/domain/model/nano/OperatingRecommendInfoListProto$OperatingRecommendInfo;->groupId:I

    const/4 v1, 0x1

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    iget v0, p0, Lcom/oplus/card/config/domain/model/nano/OperatingRecommendInfoListProto$OperatingRecommendInfo;->type:I

    const/4 v1, 0x2

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    iget v0, p0, Lcom/oplus/card/config/domain/model/nano/OperatingRecommendInfoListProto$OperatingRecommendInfo;->order:I

    const/4 v1, 0x3

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    iget v0, p0, Lcom/oplus/card/config/domain/model/nano/OperatingRecommendInfoListProto$OperatingRecommendInfo;->weight:I

    const/4 v1, 0x4

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    iget v0, p0, Lcom/oplus/card/config/domain/model/nano/OperatingRecommendInfoListProto$OperatingRecommendInfo;->recommendType:I

    const/4 v1, 0x5

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    invoke-super {p0, p1}, Lcom/google/protobuf/nano/MessageNano;->writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    return-void
.end method
