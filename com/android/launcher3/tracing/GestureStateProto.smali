.class public final Lcom/android/launcher3/tracing/GestureStateProto;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source ""

# interfaces
.implements Lcom/android/launcher3/tracing/GestureStateProtoOrBuilder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/tracing/GestureStateProto$Builder;,
        Lcom/android/launcher3/tracing/GestureStateProto$GestureEndTarget;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lcom/android/launcher3/tracing/GestureStateProto;",
        "Lcom/android/launcher3/tracing/GestureStateProto$Builder;",
        ">;",
        "Lcom/android/launcher3/tracing/GestureStateProtoOrBuilder;"
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Lcom/android/launcher3/tracing/GestureStateProto;

.field public static final ENDTARGET_FIELD_NUMBER:I = 0x1

.field private static volatile PARSER:Lcom/google/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lcom/android/launcher3/tracing/GestureStateProto;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private bitField0_:I

.field private endTarget_:I


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/android/launcher3/tracing/GestureStateProto;

    invoke-direct {v0}, Lcom/android/launcher3/tracing/GestureStateProto;-><init>()V

    sput-object v0, Lcom/android/launcher3/tracing/GestureStateProto;->DEFAULT_INSTANCE:Lcom/android/launcher3/tracing/GestureStateProto;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->makeImmutable()V

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    return-void
.end method

.method public static synthetic access$000()Lcom/android/launcher3/tracing/GestureStateProto;
    .registers 1

    sget-object v0, Lcom/android/launcher3/tracing/GestureStateProto;->DEFAULT_INSTANCE:Lcom/android/launcher3/tracing/GestureStateProto;

    return-object v0
.end method

.method public static synthetic access$100(Lcom/android/launcher3/tracing/GestureStateProto;Lcom/android/launcher3/tracing/GestureStateProto$GestureEndTarget;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/launcher3/tracing/GestureStateProto;->setEndTarget(Lcom/android/launcher3/tracing/GestureStateProto$GestureEndTarget;)V

    return-void
.end method

.method public static synthetic access$200(Lcom/android/launcher3/tracing/GestureStateProto;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/launcher3/tracing/GestureStateProto;->clearEndTarget()V

    return-void
.end method

.method private clearEndTarget()V
    .registers 2

    iget v0, p0, Lcom/android/launcher3/tracing/GestureStateProto;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/android/launcher3/tracing/GestureStateProto;->bitField0_:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/launcher3/tracing/GestureStateProto;->endTarget_:I

    return-void
.end method

.method public static getDefaultInstance()Lcom/android/launcher3/tracing/GestureStateProto;
    .registers 1

    sget-object v0, Lcom/android/launcher3/tracing/GestureStateProto;->DEFAULT_INSTANCE:Lcom/android/launcher3/tracing/GestureStateProto;

    return-object v0
.end method

.method public static newBuilder()Lcom/android/launcher3/tracing/GestureStateProto$Builder;
    .registers 1

    sget-object v0, Lcom/android/launcher3/tracing/GestureStateProto;->DEFAULT_INSTANCE:Lcom/android/launcher3/tracing/GestureStateProto;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->toBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/tracing/GestureStateProto$Builder;

    return-object v0
.end method

.method public static newBuilder(Lcom/android/launcher3/tracing/GestureStateProto;)Lcom/android/launcher3/tracing/GestureStateProto$Builder;
    .registers 2

    sget-object v0, Lcom/android/launcher3/tracing/GestureStateProto;->DEFAULT_INSTANCE:Lcom/android/launcher3/tracing/GestureStateProto;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->toBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/tracing/GestureStateProto$Builder;

    invoke-virtual {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, Lcom/android/launcher3/tracing/GestureStateProto$Builder;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/android/launcher3/tracing/GestureStateProto;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lcom/android/launcher3/tracing/GestureStateProto;->DEFAULT_INSTANCE:Lcom/android/launcher3/tracing/GestureStateProto;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/android/launcher3/tracing/GestureStateProto;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/android/launcher3/tracing/GestureStateProto;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lcom/android/launcher3/tracing/GestureStateProto;->DEFAULT_INSTANCE:Lcom/android/launcher3/tracing/GestureStateProto;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/android/launcher3/tracing/GestureStateProto;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/android/launcher3/tracing/GestureStateProto;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    sget-object v0, Lcom/android/launcher3/tracing/GestureStateProto;->DEFAULT_INSTANCE:Lcom/android/launcher3/tracing/GestureStateProto;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/android/launcher3/tracing/GestureStateProto;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/android/launcher3/tracing/GestureStateProto;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    sget-object v0, Lcom/android/launcher3/tracing/GestureStateProto;->DEFAULT_INSTANCE:Lcom/android/launcher3/tracing/GestureStateProto;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/android/launcher3/tracing/GestureStateProto;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/android/launcher3/tracing/GestureStateProto;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lcom/android/launcher3/tracing/GestureStateProto;->DEFAULT_INSTANCE:Lcom/android/launcher3/tracing/GestureStateProto;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/android/launcher3/tracing/GestureStateProto;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/android/launcher3/tracing/GestureStateProto;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lcom/android/launcher3/tracing/GestureStateProto;->DEFAULT_INSTANCE:Lcom/android/launcher3/tracing/GestureStateProto;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/android/launcher3/tracing/GestureStateProto;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/android/launcher3/tracing/GestureStateProto;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lcom/android/launcher3/tracing/GestureStateProto;->DEFAULT_INSTANCE:Lcom/android/launcher3/tracing/GestureStateProto;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/android/launcher3/tracing/GestureStateProto;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/android/launcher3/tracing/GestureStateProto;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lcom/android/launcher3/tracing/GestureStateProto;->DEFAULT_INSTANCE:Lcom/android/launcher3/tracing/GestureStateProto;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/android/launcher3/tracing/GestureStateProto;

    return-object p0
.end method

.method public static parseFrom([B)Lcom/android/launcher3/tracing/GestureStateProto;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    sget-object v0, Lcom/android/launcher3/tracing/GestureStateProto;->DEFAULT_INSTANCE:Lcom/android/launcher3/tracing/GestureStateProto;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/android/launcher3/tracing/GestureStateProto;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/android/launcher3/tracing/GestureStateProto;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    sget-object v0, Lcom/android/launcher3/tracing/GestureStateProto;->DEFAULT_INSTANCE:Lcom/android/launcher3/tracing/GestureStateProto;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/android/launcher3/tracing/GestureStateProto;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/android/launcher3/tracing/GestureStateProto;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/android/launcher3/tracing/GestureStateProto;->DEFAULT_INSTANCE:Lcom/android/launcher3/tracing/GestureStateProto;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->getParserForType()Lcom/google/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private setEndTarget(Lcom/android/launcher3/tracing/GestureStateProto$GestureEndTarget;)V
    .registers 3

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget v0, p0, Lcom/android/launcher3/tracing/GestureStateProto;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/launcher3/tracing/GestureStateProto;->bitField0_:I

    invoke-virtual {p1}, Lcom/android/launcher3/tracing/GestureStateProto$GestureEndTarget;->getNumber()I

    move-result p1

    iput p1, p0, Lcom/android/launcher3/tracing/GestureStateProto;->endTarget_:I

    return-void
.end method


# virtual methods
.method public final dynamicMethod(Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 7

    sget-object v0, Lcom/android/launcher3/tracing/GestureStateProto$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x0

    packed-switch p1, :pswitch_data_b6

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0

    :pswitch_12  #0x8
    sget-object p0, Lcom/android/launcher3/tracing/GestureStateProto;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p0, :cond_2b

    const-class p0, Lcom/android/launcher3/tracing/GestureStateProto;

    monitor-enter p0

    :try_start_19
    sget-object p1, Lcom/android/launcher3/tracing/GestureStateProto;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_26

    new-instance p1, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p2, Lcom/android/launcher3/tracing/GestureStateProto;->DEFAULT_INSTANCE:Lcom/android/launcher3/tracing/GestureStateProto;

    invoke-direct {p1, p2}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    sput-object p1, Lcom/android/launcher3/tracing/GestureStateProto;->PARSER:Lcom/google/protobuf/Parser;

    :cond_26
    monitor-exit p0

    goto :goto_2b

    :catchall_28
    move-exception p1

    monitor-exit p0
    :try_end_2a
    .catchall {:try_start_19 .. :try_end_2a} :catchall_28

    throw p1

    :cond_2b
    :goto_2b
    sget-object p0, Lcom/android/launcher3/tracing/GestureStateProto;->PARSER:Lcom/google/protobuf/Parser;

    return-object p0

    :pswitch_2e  #0x6
    check-cast p2, Lcom/google/protobuf/CodedInputStream;

    check-cast p3, Lcom/google/protobuf/ExtensionRegistryLite;

    const/4 p1, 0x0

    :cond_33
    :goto_33
    if-nez p1, :cond_81

    :try_start_35
    invoke-virtual {p2}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result p3

    const/4 v0, 0x1

    if-eqz p3, :cond_5d

    const/16 v1, 0x8

    if-eq p3, v1, :cond_47

    invoke-virtual {p0, p3, p2}, Lcom/google/protobuf/GeneratedMessageLite;->parseUnknownField(ILcom/google/protobuf/CodedInputStream;)Z

    move-result p3

    if-nez p3, :cond_33

    goto :goto_5d

    :cond_47
    invoke-virtual {p2}, Lcom/google/protobuf/CodedInputStream;->readEnum()I

    move-result p3

    invoke-static {p3}, Lcom/android/launcher3/tracing/GestureStateProto$GestureEndTarget;->forNumber(I)Lcom/android/launcher3/tracing/GestureStateProto$GestureEndTarget;

    move-result-object v1

    if-nez v1, :cond_55

    invoke-super {p0, v0, p3}, Lcom/google/protobuf/GeneratedMessageLite;->mergeVarintField(II)V

    goto :goto_33

    :cond_55
    iget v1, p0, Lcom/android/launcher3/tracing/GestureStateProto;->bitField0_:I

    or-int/2addr v0, v1

    iput v0, p0, Lcom/android/launcher3/tracing/GestureStateProto;->bitField0_:I

    iput p3, p0, Lcom/android/launcher3/tracing/GestureStateProto;->endTarget_:I
    :try_end_5c
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_35 .. :try_end_5c} :catch_75
    .catch Ljava/io/IOException; {:try_start_35 .. :try_end_5c} :catch_61
    .catchall {:try_start_35 .. :try_end_5c} :catchall_5f

    goto :goto_33

    :cond_5d
    :goto_5d
    move p1, v0

    goto :goto_33

    :catchall_5f
    move-exception p0

    goto :goto_80

    :catch_61
    move-exception p1

    :try_start_62
    new-instance p2, Ljava/lang/RuntimeException;

    new-instance p3, Lcom/google/protobuf/InvalidProtocolBufferException;

    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, p1}, Lcom/google/protobuf/InvalidProtocolBufferException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p0

    invoke-direct {p2, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :catch_75
    move-exception p1

    new-instance p2, Ljava/lang/RuntimeException;

    invoke-virtual {p1, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p0

    invoke-direct {p2, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2
    :try_end_80
    .catchall {:try_start_62 .. :try_end_80} :catchall_5f

    :goto_80
    throw p0

    :cond_81
    :pswitch_81  #0x7
    sget-object p0, Lcom/android/launcher3/tracing/GestureStateProto;->DEFAULT_INSTANCE:Lcom/android/launcher3/tracing/GestureStateProto;

    return-object p0

    :pswitch_84  #0x5
    check-cast p2, Lcom/google/protobuf/GeneratedMessageLite$Visitor;

    check-cast p3, Lcom/android/launcher3/tracing/GestureStateProto;

    invoke-virtual {p0}, Lcom/android/launcher3/tracing/GestureStateProto;->hasEndTarget()Z

    move-result p1

    iget v0, p0, Lcom/android/launcher3/tracing/GestureStateProto;->endTarget_:I

    invoke-virtual {p3}, Lcom/android/launcher3/tracing/GestureStateProto;->hasEndTarget()Z

    move-result v1

    iget v2, p3, Lcom/android/launcher3/tracing/GestureStateProto;->endTarget_:I

    invoke-interface {p2, p1, v0, v1, v2}, Lcom/google/protobuf/GeneratedMessageLite$Visitor;->visitInt(ZIZI)I

    move-result p1

    iput p1, p0, Lcom/android/launcher3/tracing/GestureStateProto;->endTarget_:I

    sget-object p1, Lcom/google/protobuf/GeneratedMessageLite$MergeFromVisitor;->INSTANCE:Lcom/google/protobuf/GeneratedMessageLite$MergeFromVisitor;

    if-ne p2, p1, :cond_a5

    iget p1, p0, Lcom/android/launcher3/tracing/GestureStateProto;->bitField0_:I

    iget p2, p3, Lcom/android/launcher3/tracing/GestureStateProto;->bitField0_:I

    or-int/2addr p1, p2

    iput p1, p0, Lcom/android/launcher3/tracing/GestureStateProto;->bitField0_:I

    :cond_a5
    return-object p0

    :pswitch_a6  #0x4
    new-instance p0, Lcom/android/launcher3/tracing/GestureStateProto$Builder;

    invoke-direct {p0, v0}, Lcom/android/launcher3/tracing/GestureStateProto$Builder;-><init>(Lcom/android/launcher3/tracing/GestureStateProto$1;)V

    return-object p0

    :pswitch_ac  #0x3
    return-object v0

    :pswitch_ad  #0x2
    sget-object p0, Lcom/android/launcher3/tracing/GestureStateProto;->DEFAULT_INSTANCE:Lcom/android/launcher3/tracing/GestureStateProto;

    return-object p0

    :pswitch_b0  #0x1
    new-instance p0, Lcom/android/launcher3/tracing/GestureStateProto;

    invoke-direct {p0}, Lcom/android/launcher3/tracing/GestureStateProto;-><init>()V

    return-object p0

    :pswitch_data_b6
    .packed-switch 0x1
        :pswitch_b0  #00000001
        :pswitch_ad  #00000002
        :pswitch_ac  #00000003
        :pswitch_a6  #00000004
        :pswitch_84  #00000005
        :pswitch_2e  #00000006
        :pswitch_81  #00000007
        :pswitch_12  #00000008
    .end packed-switch
.end method

.method public getEndTarget()Lcom/android/launcher3/tracing/GestureStateProto$GestureEndTarget;
    .registers 1

    iget p0, p0, Lcom/android/launcher3/tracing/GestureStateProto;->endTarget_:I

    invoke-static {p0}, Lcom/android/launcher3/tracing/GestureStateProto$GestureEndTarget;->forNumber(I)Lcom/android/launcher3/tracing/GestureStateProto$GestureEndTarget;

    move-result-object p0

    if-nez p0, :cond_a

    sget-object p0, Lcom/android/launcher3/tracing/GestureStateProto$GestureEndTarget;->UNSET:Lcom/android/launcher3/tracing/GestureStateProto$GestureEndTarget;

    :cond_a
    return-object p0
.end method

.method public getSerializedSize()I
    .registers 4

    iget v0, p0, Lcom/google/protobuf/GeneratedMessageLite;->memoizedSerializedSize:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_6

    return v0

    :cond_6
    const/4 v0, 0x0

    iget v1, p0, Lcom/android/launcher3/tracing/GestureStateProto;->bitField0_:I

    const/4 v2, 0x1

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_14

    iget v1, p0, Lcom/android/launcher3/tracing/GestureStateProto;->endTarget_:I

    invoke-static {v2, v1}, Lcom/google/protobuf/CodedOutputStream;->computeEnumSize(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_14
    iget-object v1, p0, Lcom/google/protobuf/GeneratedMessageLite;->unknownFields:Lcom/google/protobuf/UnknownFieldSetLite;

    invoke-virtual {v1}, Lcom/google/protobuf/UnknownFieldSetLite;->getSerializedSize()I

    move-result v1

    add-int/2addr v1, v0

    iput v1, p0, Lcom/google/protobuf/GeneratedMessageLite;->memoizedSerializedSize:I

    return v1
.end method

.method public hasEndTarget()Z
    .registers 2

    iget p0, p0, Lcom/android/launcher3/tracing/GestureStateProto;->bitField0_:I

    const/4 v0, 0x1

    and-int/2addr p0, v0

    if-ne p0, v0, :cond_7

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    return v0
.end method

.method public writeTo(Lcom/google/protobuf/CodedOutputStream;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lcom/android/launcher3/tracing/GestureStateProto;->bitField0_:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_b

    iget v0, p0, Lcom/android/launcher3/tracing/GestureStateProto;->endTarget_:I

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeEnum(II)V

    :cond_b
    iget-object p0, p0, Lcom/google/protobuf/GeneratedMessageLite;->unknownFields:Lcom/google/protobuf/UnknownFieldSetLite;

    invoke-virtual {p0, p1}, Lcom/google/protobuf/UnknownFieldSetLite;->writeTo(Lcom/google/protobuf/CodedOutputStream;)V

    return-void
.end method
