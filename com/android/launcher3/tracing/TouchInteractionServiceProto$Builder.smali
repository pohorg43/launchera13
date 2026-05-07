.class public final Lcom/android/launcher3/tracing/TouchInteractionServiceProto$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source ""

# interfaces
.implements Lcom/android/launcher3/tracing/TouchInteractionServiceProtoOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/tracing/TouchInteractionServiceProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lcom/android/launcher3/tracing/TouchInteractionServiceProto;",
        "Lcom/android/launcher3/tracing/TouchInteractionServiceProto$Builder;",
        ">;",
        "Lcom/android/launcher3/tracing/TouchInteractionServiceProtoOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 2

    invoke-static {}, Lcom/android/launcher3/tracing/TouchInteractionServiceProto;->access$000()Lcom/android/launcher3/tracing/TouchInteractionServiceProto;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/launcher3/tracing/TouchInteractionServiceProto$1;)V
    .registers 2

    invoke-direct {p0}, Lcom/android/launcher3/tracing/TouchInteractionServiceProto$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearInputConsumer()Lcom/android/launcher3/tracing/TouchInteractionServiceProto$Builder;
    .registers 2

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/launcher3/tracing/TouchInteractionServiceProto;

    invoke-static {v0}, Lcom/android/launcher3/tracing/TouchInteractionServiceProto;->access$1000(Lcom/android/launcher3/tracing/TouchInteractionServiceProto;)V

    return-object p0
.end method

.method public clearOverviewComponentObvserver()Lcom/android/launcher3/tracing/TouchInteractionServiceProto$Builder;
    .registers 2

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/launcher3/tracing/TouchInteractionServiceProto;

    invoke-static {v0}, Lcom/android/launcher3/tracing/TouchInteractionServiceProto;->access$600(Lcom/android/launcher3/tracing/TouchInteractionServiceProto;)V

    return-object p0
.end method

.method public clearServiceConnected()Lcom/android/launcher3/tracing/TouchInteractionServiceProto$Builder;
    .registers 2

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/launcher3/tracing/TouchInteractionServiceProto;

    invoke-static {v0}, Lcom/android/launcher3/tracing/TouchInteractionServiceProto;->access$200(Lcom/android/launcher3/tracing/TouchInteractionServiceProto;)V

    return-object p0
.end method

.method public getInputConsumer()Lcom/android/launcher3/tracing/InputConsumerProto;
    .registers 1

    iget-object p0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast p0, Lcom/android/launcher3/tracing/TouchInteractionServiceProto;

    invoke-virtual {p0}, Lcom/android/launcher3/tracing/TouchInteractionServiceProto;->getInputConsumer()Lcom/android/launcher3/tracing/InputConsumerProto;

    move-result-object p0

    return-object p0
.end method

.method public getOverviewComponentObvserver()Lcom/android/launcher3/tracing/OverviewComponentObserverProto;
    .registers 1

    iget-object p0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast p0, Lcom/android/launcher3/tracing/TouchInteractionServiceProto;

    invoke-virtual {p0}, Lcom/android/launcher3/tracing/TouchInteractionServiceProto;->getOverviewComponentObvserver()Lcom/android/launcher3/tracing/OverviewComponentObserverProto;

    move-result-object p0

    return-object p0
.end method

.method public getServiceConnected()Z
    .registers 1

    iget-object p0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast p0, Lcom/android/launcher3/tracing/TouchInteractionServiceProto;

    invoke-virtual {p0}, Lcom/android/launcher3/tracing/TouchInteractionServiceProto;->getServiceConnected()Z

    move-result p0

    return p0
.end method

.method public hasInputConsumer()Z
    .registers 1

    iget-object p0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast p0, Lcom/android/launcher3/tracing/TouchInteractionServiceProto;

    invoke-virtual {p0}, Lcom/android/launcher3/tracing/TouchInteractionServiceProto;->hasInputConsumer()Z

    move-result p0

    return p0
.end method

.method public hasOverviewComponentObvserver()Z
    .registers 1

    iget-object p0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast p0, Lcom/android/launcher3/tracing/TouchInteractionServiceProto;

    invoke-virtual {p0}, Lcom/android/launcher3/tracing/TouchInteractionServiceProto;->hasOverviewComponentObvserver()Z

    move-result p0

    return p0
.end method

.method public hasServiceConnected()Z
    .registers 1

    iget-object p0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast p0, Lcom/android/launcher3/tracing/TouchInteractionServiceProto;

    invoke-virtual {p0}, Lcom/android/launcher3/tracing/TouchInteractionServiceProto;->hasServiceConnected()Z

    move-result p0

    return p0
.end method

.method public mergeInputConsumer(Lcom/android/launcher3/tracing/InputConsumerProto;)Lcom/android/launcher3/tracing/TouchInteractionServiceProto$Builder;
    .registers 3

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/launcher3/tracing/TouchInteractionServiceProto;

    invoke-static {v0, p1}, Lcom/android/launcher3/tracing/TouchInteractionServiceProto;->access$900(Lcom/android/launcher3/tracing/TouchInteractionServiceProto;Lcom/android/launcher3/tracing/InputConsumerProto;)V

    return-object p0
.end method

.method public mergeOverviewComponentObvserver(Lcom/android/launcher3/tracing/OverviewComponentObserverProto;)Lcom/android/launcher3/tracing/TouchInteractionServiceProto$Builder;
    .registers 3

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/launcher3/tracing/TouchInteractionServiceProto;

    invoke-static {v0, p1}, Lcom/android/launcher3/tracing/TouchInteractionServiceProto;->access$500(Lcom/android/launcher3/tracing/TouchInteractionServiceProto;Lcom/android/launcher3/tracing/OverviewComponentObserverProto;)V

    return-object p0
.end method

.method public setInputConsumer(Lcom/android/launcher3/tracing/InputConsumerProto$Builder;)Lcom/android/launcher3/tracing/TouchInteractionServiceProto$Builder;
    .registers 3

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/launcher3/tracing/TouchInteractionServiceProto;

    invoke-static {v0, p1}, Lcom/android/launcher3/tracing/TouchInteractionServiceProto;->access$800(Lcom/android/launcher3/tracing/TouchInteractionServiceProto;Lcom/android/launcher3/tracing/InputConsumerProto$Builder;)V

    return-object p0
.end method

.method public setInputConsumer(Lcom/android/launcher3/tracing/InputConsumerProto;)Lcom/android/launcher3/tracing/TouchInteractionServiceProto$Builder;
    .registers 3

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/launcher3/tracing/TouchInteractionServiceProto;

    invoke-static {v0, p1}, Lcom/android/launcher3/tracing/TouchInteractionServiceProto;->access$700(Lcom/android/launcher3/tracing/TouchInteractionServiceProto;Lcom/android/launcher3/tracing/InputConsumerProto;)V

    return-object p0
.end method

.method public setOverviewComponentObvserver(Lcom/android/launcher3/tracing/OverviewComponentObserverProto$Builder;)Lcom/android/launcher3/tracing/TouchInteractionServiceProto$Builder;
    .registers 3

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/launcher3/tracing/TouchInteractionServiceProto;

    invoke-static {v0, p1}, Lcom/android/launcher3/tracing/TouchInteractionServiceProto;->access$400(Lcom/android/launcher3/tracing/TouchInteractionServiceProto;Lcom/android/launcher3/tracing/OverviewComponentObserverProto$Builder;)V

    return-object p0
.end method

.method public setOverviewComponentObvserver(Lcom/android/launcher3/tracing/OverviewComponentObserverProto;)Lcom/android/launcher3/tracing/TouchInteractionServiceProto$Builder;
    .registers 3

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/launcher3/tracing/TouchInteractionServiceProto;

    invoke-static {v0, p1}, Lcom/android/launcher3/tracing/TouchInteractionServiceProto;->access$300(Lcom/android/launcher3/tracing/TouchInteractionServiceProto;Lcom/android/launcher3/tracing/OverviewComponentObserverProto;)V

    return-object p0
.end method

.method public setServiceConnected(Z)Lcom/android/launcher3/tracing/TouchInteractionServiceProto$Builder;
    .registers 3

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/launcher3/tracing/TouchInteractionServiceProto;

    invoke-static {v0, p1}, Lcom/android/launcher3/tracing/TouchInteractionServiceProto;->access$100(Lcom/android/launcher3/tracing/TouchInteractionServiceProto;Z)V

    return-object p0
.end method
