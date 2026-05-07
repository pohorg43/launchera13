.class public final Lcom/android/launcher3/tracing/LauncherTraceFileProto$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source ""

# interfaces
.implements Lcom/android/launcher3/tracing/LauncherTraceFileProtoOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/tracing/LauncherTraceFileProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lcom/android/launcher3/tracing/LauncherTraceFileProto;",
        "Lcom/android/launcher3/tracing/LauncherTraceFileProto$Builder;",
        ">;",
        "Lcom/android/launcher3/tracing/LauncherTraceFileProtoOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 2

    invoke-static {}, Lcom/android/launcher3/tracing/LauncherTraceFileProto;->access$000()Lcom/android/launcher3/tracing/LauncherTraceFileProto;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/launcher3/tracing/LauncherTraceFileProto$1;)V
    .registers 2

    invoke-direct {p0}, Lcom/android/launcher3/tracing/LauncherTraceFileProto$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public addAllEntry(Ljava/lang/Iterable;)Lcom/android/launcher3/tracing/LauncherTraceFileProto$Builder;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/android/launcher3/tracing/LauncherTraceEntryProto;",
            ">;)",
            "Lcom/android/launcher3/tracing/LauncherTraceFileProto$Builder;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/launcher3/tracing/LauncherTraceFileProto;

    invoke-static {v0, p1}, Lcom/android/launcher3/tracing/LauncherTraceFileProto;->access$900(Lcom/android/launcher3/tracing/LauncherTraceFileProto;Ljava/lang/Iterable;)V

    return-object p0
.end method

.method public addEntry(ILcom/android/launcher3/tracing/LauncherTraceEntryProto$Builder;)Lcom/android/launcher3/tracing/LauncherTraceFileProto$Builder;
    .registers 4

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/launcher3/tracing/LauncherTraceFileProto;

    invoke-static {v0, p1, p2}, Lcom/android/launcher3/tracing/LauncherTraceFileProto;->access$800(Lcom/android/launcher3/tracing/LauncherTraceFileProto;ILcom/android/launcher3/tracing/LauncherTraceEntryProto$Builder;)V

    return-object p0
.end method

.method public addEntry(ILcom/android/launcher3/tracing/LauncherTraceEntryProto;)Lcom/android/launcher3/tracing/LauncherTraceFileProto$Builder;
    .registers 4

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/launcher3/tracing/LauncherTraceFileProto;

    invoke-static {v0, p1, p2}, Lcom/android/launcher3/tracing/LauncherTraceFileProto;->access$600(Lcom/android/launcher3/tracing/LauncherTraceFileProto;ILcom/android/launcher3/tracing/LauncherTraceEntryProto;)V

    return-object p0
.end method

.method public addEntry(Lcom/android/launcher3/tracing/LauncherTraceEntryProto$Builder;)Lcom/android/launcher3/tracing/LauncherTraceFileProto$Builder;
    .registers 3

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/launcher3/tracing/LauncherTraceFileProto;

    invoke-static {v0, p1}, Lcom/android/launcher3/tracing/LauncherTraceFileProto;->access$700(Lcom/android/launcher3/tracing/LauncherTraceFileProto;Lcom/android/launcher3/tracing/LauncherTraceEntryProto$Builder;)V

    return-object p0
.end method

.method public addEntry(Lcom/android/launcher3/tracing/LauncherTraceEntryProto;)Lcom/android/launcher3/tracing/LauncherTraceFileProto$Builder;
    .registers 3

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/launcher3/tracing/LauncherTraceFileProto;

    invoke-static {v0, p1}, Lcom/android/launcher3/tracing/LauncherTraceFileProto;->access$500(Lcom/android/launcher3/tracing/LauncherTraceFileProto;Lcom/android/launcher3/tracing/LauncherTraceEntryProto;)V

    return-object p0
.end method

.method public clearEntry()Lcom/android/launcher3/tracing/LauncherTraceFileProto$Builder;
    .registers 2

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/launcher3/tracing/LauncherTraceFileProto;

    invoke-static {v0}, Lcom/android/launcher3/tracing/LauncherTraceFileProto;->access$1000(Lcom/android/launcher3/tracing/LauncherTraceFileProto;)V

    return-object p0
.end method

.method public clearMagicNumber()Lcom/android/launcher3/tracing/LauncherTraceFileProto$Builder;
    .registers 2

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/launcher3/tracing/LauncherTraceFileProto;

    invoke-static {v0}, Lcom/android/launcher3/tracing/LauncherTraceFileProto;->access$200(Lcom/android/launcher3/tracing/LauncherTraceFileProto;)V

    return-object p0
.end method

.method public getEntry(I)Lcom/android/launcher3/tracing/LauncherTraceEntryProto;
    .registers 2

    iget-object p0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast p0, Lcom/android/launcher3/tracing/LauncherTraceFileProto;

    invoke-virtual {p0, p1}, Lcom/android/launcher3/tracing/LauncherTraceFileProto;->getEntry(I)Lcom/android/launcher3/tracing/LauncherTraceEntryProto;

    move-result-object p0

    return-object p0
.end method

.method public getEntryCount()I
    .registers 1

    iget-object p0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast p0, Lcom/android/launcher3/tracing/LauncherTraceFileProto;

    invoke-virtual {p0}, Lcom/android/launcher3/tracing/LauncherTraceFileProto;->getEntryCount()I

    move-result p0

    return p0
.end method

.method public getEntryList()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/launcher3/tracing/LauncherTraceEntryProto;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast p0, Lcom/android/launcher3/tracing/LauncherTraceFileProto;

    invoke-virtual {p0}, Lcom/android/launcher3/tracing/LauncherTraceFileProto;->getEntryList()Ljava/util/List;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getMagicNumber()J
    .registers 3

    iget-object p0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast p0, Lcom/android/launcher3/tracing/LauncherTraceFileProto;

    invoke-virtual {p0}, Lcom/android/launcher3/tracing/LauncherTraceFileProto;->getMagicNumber()J

    move-result-wide v0

    return-wide v0
.end method

.method public hasMagicNumber()Z
    .registers 1

    iget-object p0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast p0, Lcom/android/launcher3/tracing/LauncherTraceFileProto;

    invoke-virtual {p0}, Lcom/android/launcher3/tracing/LauncherTraceFileProto;->hasMagicNumber()Z

    move-result p0

    return p0
.end method

.method public removeEntry(I)Lcom/android/launcher3/tracing/LauncherTraceFileProto$Builder;
    .registers 3

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/launcher3/tracing/LauncherTraceFileProto;

    invoke-static {v0, p1}, Lcom/android/launcher3/tracing/LauncherTraceFileProto;->access$1100(Lcom/android/launcher3/tracing/LauncherTraceFileProto;I)V

    return-object p0
.end method

.method public setEntry(ILcom/android/launcher3/tracing/LauncherTraceEntryProto$Builder;)Lcom/android/launcher3/tracing/LauncherTraceFileProto$Builder;
    .registers 4

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/launcher3/tracing/LauncherTraceFileProto;

    invoke-static {v0, p1, p2}, Lcom/android/launcher3/tracing/LauncherTraceFileProto;->access$400(Lcom/android/launcher3/tracing/LauncherTraceFileProto;ILcom/android/launcher3/tracing/LauncherTraceEntryProto$Builder;)V

    return-object p0
.end method

.method public setEntry(ILcom/android/launcher3/tracing/LauncherTraceEntryProto;)Lcom/android/launcher3/tracing/LauncherTraceFileProto$Builder;
    .registers 4

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/launcher3/tracing/LauncherTraceFileProto;

    invoke-static {v0, p1, p2}, Lcom/android/launcher3/tracing/LauncherTraceFileProto;->access$300(Lcom/android/launcher3/tracing/LauncherTraceFileProto;ILcom/android/launcher3/tracing/LauncherTraceEntryProto;)V

    return-object p0
.end method

.method public setMagicNumber(J)Lcom/android/launcher3/tracing/LauncherTraceFileProto$Builder;
    .registers 4

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/launcher3/tracing/LauncherTraceFileProto;

    invoke-static {v0, p1, p2}, Lcom/android/launcher3/tracing/LauncherTraceFileProto;->access$100(Lcom/android/launcher3/tracing/LauncherTraceFileProto;J)V

    return-object p0
.end method
