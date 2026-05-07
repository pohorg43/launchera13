.class public final Lcom/oplus/card/proxy/util/ProtoDataConversionUtilKt;
.super Ljava/lang/Object;
.source ""


# direct methods
.method public static final toCardActionProto(Lcom/oplus/card/manager/domain/model/CardAction;III)Lcom/oplus/card/manager/domain/model/nano/CardActionProto;
    .registers 6

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/oplus/card/manager/domain/model/nano/CardActionProto;

    invoke-direct {v0}, Lcom/oplus/card/manager/domain/model/nano/CardActionProto;-><init>()V

    invoke-virtual {p0}, Lcom/oplus/card/manager/domain/model/CardAction;->getAction()I

    move-result v1

    iput v1, v0, Lcom/oplus/card/manager/domain/model/nano/CardActionProto;->action:I

    iput p2, v0, Lcom/oplus/card/manager/domain/model/nano/CardActionProto;->cardId:I

    iput p1, v0, Lcom/oplus/card/manager/domain/model/nano/CardActionProto;->cardType:I

    iput p3, v0, Lcom/oplus/card/manager/domain/model/nano/CardActionProto;->hostId:I

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0}, Lcom/oplus/card/manager/domain/model/CardAction;->getParam()Ljava/util/Map;

    move-result-object p0

    if-nez p0, :cond_22

    goto :goto_4f

    :cond_22
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_2a
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_4f

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/Map$Entry;

    invoke-interface {p2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    new-instance v1, Lcom/oplus/card/manager/domain/model/nano/CardActionProto$ParamEntry;

    invoke-direct {v1}, Lcom/oplus/card/manager/domain/model/nano/CardActionProto$ParamEntry;-><init>()V

    iput-object p3, v1, Lcom/oplus/card/manager/domain/model/nano/CardActionProto$ParamEntry;->key:Ljava/lang/String;

    iput-object p2, v1, Lcom/oplus/card/manager/domain/model/nano/CardActionProto$ParamEntry;->value:Ljava/lang/String;

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2a

    :cond_4f
    :goto_4f
    const/4 p0, 0x0

    new-array p0, p0, [Lcom/oplus/card/manager/domain/model/nano/CardActionProto$ParamEntry;

    invoke-interface {p1, p0}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    const-string p1, "null cannot be cast to non-null type kotlin.Array<T of kotlin.collections.ArraysKt__ArraysJVMKt.toTypedArray>"

    invoke-static {p0, p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p0, [Lcom/oplus/card/manager/domain/model/nano/CardActionProto$ParamEntry;

    iput-object p0, v0, Lcom/oplus/card/manager/domain/model/nano/CardActionProto;->param:[Lcom/oplus/card/manager/domain/model/nano/CardActionProto$ParamEntry;

    return-object v0
.end method

.method public static final toChangeCardEvent(Lcom/oplus/card/manager/domain/model/nano/ChangeCardEventProto;)Lcom/oplus/card/manager/domain/model/ChangeCardEvent;
    .registers 9

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/oplus/card/manager/domain/model/ChangeCardEvent;

    iget v2, p0, Lcom/oplus/card/manager/domain/model/nano/ChangeCardEventProto;->action:I

    iget v3, p0, Lcom/oplus/card/manager/domain/model/nano/ChangeCardEventProto;->type:I

    iget v4, p0, Lcom/oplus/card/manager/domain/model/nano/ChangeCardEventProto;->cardId:I

    iget v5, p0, Lcom/oplus/card/manager/domain/model/nano/ChangeCardEventProto;->location:I

    iget v6, p0, Lcom/oplus/card/manager/domain/model/nano/ChangeCardEventProto;->position:I

    iget v7, p0, Lcom/oplus/card/manager/domain/model/nano/ChangeCardEventProto;->index:I

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Lcom/oplus/card/manager/domain/model/ChangeCardEvent;-><init>(IIIIII)V

    return-object v0
.end method

.method public static final toListCardConfigInfo(Lcom/oplus/cardservice/valueobject/model/nano/CardConfigInfoListProto;)Ljava/util/List;
    .registers 33
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/oplus/cardservice/valueobject/model/nano/CardConfigInfoListProto;",
            ")",
            "Ljava/util/List<",
            "Lcom/oplus/card/config/domain/model/CardConfigInfo;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p0

    const-string v1, "<this>"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v2

    sget-object v3, Lcom/oplus/card/util/LogD;->INSTANCE:Lcom/oplus/card/util/LogD;

    iget-object v4, v0, Lcom/oplus/cardservice/valueobject/model/nano/CardConfigInfoListProto;->list:[Lcom/oplus/cardservice/valueobject/model/nano/CardConfigInfoListProto$CardConfigInfoProto;

    array-length v4, v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string v5, "toListCardConfigInfo list.size = "

    invoke-static {v5, v4}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/oplus/card/util/LogD;->fileLog(Ljava/lang/String;)V

    iget-object v0, v0, Lcom/oplus/cardservice/valueobject/model/nano/CardConfigInfoListProto;->list:[Lcom/oplus/cardservice/valueobject/model/nano/CardConfigInfoListProto$CardConfigInfoProto;

    const-string v3, "this.list"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    array-length v3, v0

    const/4 v4, 0x0

    :goto_2b
    if-ge v4, v3, :cond_d8

    aget-object v5, v0, v4

    if-eqz v2, :cond_42

    sget-object v6, Lcom/oplus/card/util/LogD;->INSTANCE:Lcom/oplus/card/util/LogD;

    iget v7, v5, Lcom/oplus/cardservice/valueobject/model/nano/CardConfigInfoListProto$CardConfigInfoProto;->type:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const-string v8, "toListCardConfigInfo type = "

    invoke-static {v8, v7}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/oplus/card/util/LogD;->log(Ljava/lang/String;)V

    :cond_42
    new-instance v6, Lcom/oplus/card/config/domain/model/CardConfigInfo;

    move-object v8, v6

    iget v9, v5, Lcom/oplus/cardservice/valueobject/model/nano/CardConfigInfoListProto$CardConfigInfoProto;->groupId:I

    iget-object v7, v5, Lcom/oplus/cardservice/valueobject/model/nano/CardConfigInfoListProto$CardConfigInfoProto;->groupTitle:Ljava/lang/String;

    move-object v10, v7

    const-string v11, "it.groupTitle"

    invoke-static {v7, v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v7, v5, Lcom/oplus/cardservice/valueobject/model/nano/CardConfigInfoListProto$CardConfigInfoProto;->groupIcon:Ljava/lang/String;

    move-object v11, v7

    const-string v12, "it.groupIcon"

    invoke-static {v7, v12}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget v12, v5, Lcom/oplus/cardservice/valueobject/model/nano/CardConfigInfoListProto$CardConfigInfoProto;->type:I

    iget-object v7, v5, Lcom/oplus/cardservice/valueobject/model/nano/CardConfigInfoListProto$CardConfigInfoProto;->name:Ljava/lang/String;

    move-object v13, v7

    const-string v14, "it.name"

    invoke-static {v7, v14}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v7, v5, Lcom/oplus/cardservice/valueobject/model/nano/CardConfigInfoListProto$CardConfigInfoProto;->desc:Ljava/lang/String;

    move-object v14, v7

    const-string v15, "it.desc"

    invoke-static {v7, v15}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v7, v5, Lcom/oplus/cardservice/valueobject/model/nano/CardConfigInfoListProto$CardConfigInfoProto;->preview:Ljava/lang/String;

    move-object v15, v7

    move-object/from16 p0, v0

    const-string v0, "it.preview"

    invoke-static {v7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget v0, v5, Lcom/oplus/cardservice/valueobject/model/nano/CardConfigInfoListProto$CardConfigInfoProto;->size:I

    move/from16 v16, v0

    iget v0, v5, Lcom/oplus/cardservice/valueobject/model/nano/CardConfigInfoListProto$CardConfigInfoProto;->orderInGroup:I

    move/from16 v17, v0

    iget-object v0, v5, Lcom/oplus/cardservice/valueobject/model/nano/CardConfigInfoListProto$CardConfigInfoProto;->packageName:Ljava/lang/String;

    move-object/from16 v18, v0

    const-string v7, "it.packageName"

    invoke-static {v0, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, v5, Lcom/oplus/cardservice/valueobject/model/nano/CardConfigInfoListProto$CardConfigInfoProto;->componentName:Ljava/lang/String;

    move-object/from16 v19, v0

    const-string v7, "it.componentName"

    invoke-static {v0, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget v0, v5, Lcom/oplus/cardservice/valueobject/model/nano/CardConfigInfoListProto$CardConfigInfoProto;->category:I

    move/from16 v20, v0

    iget-boolean v0, v5, Lcom/oplus/cardservice/valueobject/model/nano/CardConfigInfoListProto$CardConfigInfoProto;->resizable:Z

    move/from16 v21, v0

    iget v0, v5, Lcom/oplus/cardservice/valueobject/model/nano/CardConfigInfoListProto$CardConfigInfoProto;->operatingIcon:I

    move/from16 v22, v0

    iget-object v0, v5, Lcom/oplus/cardservice/valueobject/model/nano/CardConfigInfoListProto$CardConfigInfoProto;->settingUrl:Ljava/lang/String;

    move-object/from16 v23, v0

    const-string v7, "it.settingUrl"

    invoke-static {v0, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget v0, v5, Lcom/oplus/cardservice/valueobject/model/nano/CardConfigInfoListProto$CardConfigInfoProto;->displayArea:I

    move/from16 v24, v0

    iget v0, v5, Lcom/oplus/cardservice/valueobject/model/nano/CardConfigInfoListProto$CardConfigInfoProto;->minWidth:I

    move/from16 v25, v0

    iget v0, v5, Lcom/oplus/cardservice/valueobject/model/nano/CardConfigInfoListProto$CardConfigInfoProto;->minHeight:I

    move/from16 v26, v0

    iget-object v0, v5, Lcom/oplus/cardservice/valueobject/model/nano/CardConfigInfoListProto$CardConfigInfoProto;->loadingIcon:Ljava/lang/String;

    move-object/from16 v27, v0

    const-string v7, "it.loadingIcon"

    invoke-static {v0, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, v5, Lcom/oplus/cardservice/valueobject/model/nano/CardConfigInfoListProto$CardConfigInfoProto;->loadingBgIcon:Ljava/lang/String;

    move-object/from16 v28, v0

    const-string v7, "it.loadingBgIcon"

    invoke-static {v0, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget v0, v5, Lcom/oplus/cardservice/valueobject/model/nano/CardConfigInfoListProto$CardConfigInfoProto;->reservedFlag:I

    move/from16 v29, v0

    iget v0, v5, Lcom/oplus/cardservice/valueobject/model/nano/CardConfigInfoListProto$CardConfigInfoProto;->defaultSubscribed:I

    move/from16 v30, v0

    iget-object v0, v5, Lcom/oplus/cardservice/valueobject/model/nano/CardConfigInfoListProto$CardConfigInfoProto;->serviceId:Ljava/lang/String;

    move-object/from16 v31, v0

    invoke-direct/range {v8 .. v31}, Lcom/oplus/card/config/domain/model/CardConfigInfo;-><init>(ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;IZILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;IILjava/lang/String;)V

    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    move-object/from16 v0, p0

    goto/16 :goto_2b

    :cond_d8
    return-object v1
.end method

.method public static final toListOperatingRecommendInfo(Lcom/oplus/card/config/domain/model/nano/OperatingRecommendInfoListProto;)Ljava/util/List;
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/oplus/card/config/domain/model/nano/OperatingRecommendInfoListProto;",
            ")",
            "Ljava/util/List<",
            "Lcom/oplus/card/config/domain/model/OperatingRecommendInfo;",
            ">;"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object p0, p0, Lcom/oplus/card/config/domain/model/nano/OperatingRecommendInfoListProto;->list:[Lcom/oplus/card/config/domain/model/nano/OperatingRecommendInfoListProto$OperatingRecommendInfo;

    const-string v1, "this.list"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    array-length v1, p0

    const/4 v2, 0x0

    :goto_13
    if-ge v2, v1, :cond_2d

    aget-object v3, p0, v2

    new-instance v10, Lcom/oplus/card/config/domain/model/OperatingRecommendInfo;

    iget v5, v3, Lcom/oplus/card/config/domain/model/nano/OperatingRecommendInfoListProto$OperatingRecommendInfo;->groupId:I

    iget v6, v3, Lcom/oplus/card/config/domain/model/nano/OperatingRecommendInfoListProto$OperatingRecommendInfo;->type:I

    iget v7, v3, Lcom/oplus/card/config/domain/model/nano/OperatingRecommendInfoListProto$OperatingRecommendInfo;->order:I

    iget v8, v3, Lcom/oplus/card/config/domain/model/nano/OperatingRecommendInfoListProto$OperatingRecommendInfo;->weight:I

    iget v9, v3, Lcom/oplus/card/config/domain/model/nano/OperatingRecommendInfoListProto$OperatingRecommendInfo;->recommendType:I

    move-object v4, v10

    invoke-direct/range {v4 .. v9}, Lcom/oplus/card/config/domain/model/OperatingRecommendInfo;-><init>(IIIII)V

    invoke-interface {v0, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_13

    :cond_2d
    return-object v0
.end method

.method public static final toUiData(Lcom/oplus/card/manager/domain/model/nano/UIDataProto;)Lcom/oplus/card/manager/domain/model/UIData;
    .registers 18

    move-object/from16 v0, p0

    const-string v1, "<this>"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, v0, Lcom/oplus/card/manager/domain/model/nano/UIDataProto;->idMaps:[Lcom/oplus/card/manager/domain/model/nano/UIDataProto$IdMapsEntry;

    const/4 v2, 0x0

    if-eqz v1, :cond_4b

    const-string v3, "this.idMaps"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    array-length v1, v1

    const/4 v4, 0x1

    if-nez v1, :cond_17

    move v1, v4

    goto :goto_18

    :cond_17
    const/4 v1, 0x0

    :goto_18
    xor-int/2addr v1, v4

    if-eqz v1, :cond_4b

    iget-object v1, v0, Lcom/oplus/card/manager/domain/model/nano/UIDataProto;->idMaps:[Lcom/oplus/card/manager/domain/model/nano/UIDataProto$IdMapsEntry;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1}, Lz2/h;->f([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_28
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oplus/card/manager/domain/model/nano/UIDataProto$IdMapsEntry;

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iget-object v4, v2, Lcom/oplus/card/manager/domain/model/nano/UIDataProto$IdMapsEntry;->key:Ljava/lang/String;

    const-string v5, "it.key"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget v2, v2, Lcom/oplus/card/manager/domain/model/nano/UIDataProto$IdMapsEntry;->value:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v3, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v2, v3

    goto :goto_28

    :cond_4b
    move-object v10, v2

    new-instance v1, Lcom/oplus/card/manager/domain/model/UIData;

    iget-object v6, v0, Lcom/oplus/card/manager/domain/model/nano/UIDataProto;->data:[B

    const-string v2, "this.data"

    invoke-static {v6, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-wide v7, v0, Lcom/oplus/card/manager/domain/model/nano/UIDataProto;->cardId:J

    iget v9, v0, Lcom/oplus/card/manager/domain/model/nano/UIDataProto;->cardType:I

    iget-object v11, v0, Lcom/oplus/card/manager/domain/model/nano/UIDataProto;->name:Ljava/lang/String;

    iget-wide v2, v0, Lcom/oplus/card/manager/domain/model/nano/UIDataProto;->version:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    iget v2, v0, Lcom/oplus/card/manager/domain/model/nano/UIDataProto;->themeId:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    iget-object v14, v0, Lcom/oplus/card/manager/domain/model/nano/UIDataProto;->value:[B

    iget-boolean v15, v0, Lcom/oplus/card/manager/domain/model/nano/UIDataProto;->forceChangeCardUI:Z

    iget-object v0, v0, Lcom/oplus/card/manager/domain/model/nano/UIDataProto;->layoutName:Ljava/lang/String;

    const-string v2, "this.layoutName"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v5, v1

    move-object/from16 v16, v0

    invoke-direct/range {v5 .. v16}, Lcom/oplus/card/manager/domain/model/UIData;-><init>([BJILjava/util/HashMap;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Integer;[BZLjava/lang/String;)V

    return-object v1
.end method
