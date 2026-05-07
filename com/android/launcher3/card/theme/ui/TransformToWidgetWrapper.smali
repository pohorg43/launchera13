.class public final Lcom/android/launcher3/card/theme/ui/TransformToWidgetWrapper;
.super Lcom/android/launcher3/card/theme/ui/AreaWidgetTransformBaseWrapper;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/card/theme/ui/TransformToWidgetWrapper$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/android/launcher3/card/theme/ui/TransformToWidgetWrapper$Companion;

.field private static final TAG:Ljava/lang/String; = "TransformToWidgetWrapper"


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/android/launcher3/card/theme/ui/TransformToWidgetWrapper$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/launcher3/card/theme/ui/TransformToWidgetWrapper$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/android/launcher3/card/theme/ui/TransformToWidgetWrapper;->Companion:Lcom/android/launcher3/card/theme/ui/TransformToWidgetWrapper$Companion;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/android/launcher3/card/theme/ui/AreaWidgetTransformBaseWrapper;-><init>()V

    return-void
.end method


# virtual methods
.method public invokeTransformAction(Lcom/android/launcher3/card/IAreaWidget;Lcom/android/launcher3/model/data/ItemInfo;ZLkotlin/jvm/functions/Function2;Lb3/d;)Ljava/lang/Object;
    .registers 23
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/launcher3/card/IAreaWidget;",
            "Lcom/android/launcher3/model/data/ItemInfo;",
            "Z",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Lcom/android/launcher3/card/theme/data/ResultCode;",
            "-",
            "Lb3/d<",
            "-",
            "Ly2/p;",
            ">;+",
            "Ljava/lang/Object;",
            ">;",
            "Lb3/d<",
            "-",
            "Ly2/p;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p4

    move-object/from16 v0, p5

    instance-of v5, v0, Lcom/android/launcher3/card/theme/ui/TransformToWidgetWrapper$invokeTransformAction$1;

    if-eqz v5, :cond_1d

    move-object v5, v0

    check-cast v5, Lcom/android/launcher3/card/theme/ui/TransformToWidgetWrapper$invokeTransformAction$1;

    iget v6, v5, Lcom/android/launcher3/card/theme/ui/TransformToWidgetWrapper$invokeTransformAction$1;->label:I

    const/high16 v7, -0x80000000

    and-int v8, v6, v7

    if-eqz v8, :cond_1d

    sub-int/2addr v6, v7

    iput v6, v5, Lcom/android/launcher3/card/theme/ui/TransformToWidgetWrapper$invokeTransformAction$1;->label:I

    goto :goto_22

    :cond_1d
    new-instance v5, Lcom/android/launcher3/card/theme/ui/TransformToWidgetWrapper$invokeTransformAction$1;

    invoke-direct {v5, v1, v0}, Lcom/android/launcher3/card/theme/ui/TransformToWidgetWrapper$invokeTransformAction$1;-><init>(Lcom/android/launcher3/card/theme/ui/TransformToWidgetWrapper;Lb3/d;)V

    :goto_22
    move-object v13, v5

    iget-object v0, v13, Lcom/android/launcher3/card/theme/ui/TransformToWidgetWrapper$invokeTransformAction$1;->result:Ljava/lang/Object;

    sget-object v5, Lc3/a;->a:Lc3/a;

    iget v6, v13, Lcom/android/launcher3/card/theme/ui/TransformToWidgetWrapper$invokeTransformAction$1;->label:I

    const-string v7, "TransformToWidgetWrapper"

    const-string v8, "TransformToWidgetWrapper, can not find cell layout"

    const-string v9, "TransformToWidgetWrapper, create failed"

    const-string v10, "launcher"

    const/4 v11, 0x2

    const/4 v12, 0x0

    packed-switch v6, :pswitch_data_28e

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_3e  #0x6
    invoke-static {v0}, Lq/d;->p(Ljava/lang/Object;)V

    goto/16 :goto_20b

    :pswitch_43  #0x5, 0x7
    invoke-static {v0}, Lq/d;->p(Ljava/lang/Object;)V

    goto/16 :goto_287

    :pswitch_48  #0x4
    iget-boolean v1, v13, Lcom/android/launcher3/card/theme/ui/TransformToWidgetWrapper$invokeTransformAction$1;->Z$0:Z

    iget-object v2, v13, Lcom/android/launcher3/card/theme/ui/TransformToWidgetWrapper$invokeTransformAction$1;->L$7:Ljava/lang/Object;

    check-cast v2, Lcom/android/launcher3/model/data/ItemInfo;

    iget-object v3, v13, Lcom/android/launcher3/card/theme/ui/TransformToWidgetWrapper$invokeTransformAction$1;->L$6:Ljava/lang/Object;

    check-cast v3, Lcom/android/launcher3/widget/CustomLauncherAppWidgetHostView;

    iget-object v4, v13, Lcom/android/launcher3/card/theme/ui/TransformToWidgetWrapper$invokeTransformAction$1;->L$5:Ljava/lang/Object;

    check-cast v4, Lcom/android/launcher3/OplusCellLayout;

    iget-object v6, v13, Lcom/android/launcher3/card/theme/ui/TransformToWidgetWrapper$invokeTransformAction$1;->L$4:Ljava/lang/Object;

    check-cast v6, Lcom/android/launcher/Launcher;

    iget-object v8, v13, Lcom/android/launcher3/card/theme/ui/TransformToWidgetWrapper$invokeTransformAction$1;->L$3:Ljava/lang/Object;

    check-cast v8, Lkotlin/jvm/functions/Function2;

    iget-object v9, v13, Lcom/android/launcher3/card/theme/ui/TransformToWidgetWrapper$invokeTransformAction$1;->L$2:Ljava/lang/Object;

    check-cast v9, Lcom/android/launcher3/model/data/ItemInfo;

    iget-object v11, v13, Lcom/android/launcher3/card/theme/ui/TransformToWidgetWrapper$invokeTransformAction$1;->L$1:Ljava/lang/Object;

    check-cast v11, Lcom/android/launcher3/card/IAreaWidget;

    iget-object v12, v13, Lcom/android/launcher3/card/theme/ui/TransformToWidgetWrapper$invokeTransformAction$1;->L$0:Ljava/lang/Object;

    check-cast v12, Lcom/android/launcher3/card/theme/ui/TransformToWidgetWrapper;

    :try_start_6a
    invoke-static {v0}, Lq/d;->p(Ljava/lang/Object;)V
    :try_end_6d
    .catch Ljava/lang/Exception; {:try_start_6a .. :try_end_6d} :catch_a3

    move-object v0, v6

    move-object v6, v12

    move-object v12, v8

    move-object v8, v3

    :goto_71
    move-object/from16 v16, v11

    move-object v11, v2

    move-object/from16 v2, v16

    goto/16 :goto_1ad

    :pswitch_78  #0x3
    iget-boolean v1, v13, Lcom/android/launcher3/card/theme/ui/TransformToWidgetWrapper$invokeTransformAction$1;->Z$0:Z

    iget-object v2, v13, Lcom/android/launcher3/card/theme/ui/TransformToWidgetWrapper$invokeTransformAction$1;->L$7:Ljava/lang/Object;

    check-cast v2, Lcom/android/launcher3/model/data/ItemInfo;

    iget-object v3, v13, Lcom/android/launcher3/card/theme/ui/TransformToWidgetWrapper$invokeTransformAction$1;->L$6:Ljava/lang/Object;

    check-cast v3, Lcom/android/launcher3/widget/CustomLauncherAppWidgetHostView;

    iget-object v4, v13, Lcom/android/launcher3/card/theme/ui/TransformToWidgetWrapper$invokeTransformAction$1;->L$5:Ljava/lang/Object;

    check-cast v4, Lcom/android/launcher3/OplusCellLayout;

    iget-object v6, v13, Lcom/android/launcher3/card/theme/ui/TransformToWidgetWrapper$invokeTransformAction$1;->L$4:Ljava/lang/Object;

    check-cast v6, Lcom/android/launcher/Launcher;

    iget-object v8, v13, Lcom/android/launcher3/card/theme/ui/TransformToWidgetWrapper$invokeTransformAction$1;->L$3:Ljava/lang/Object;

    check-cast v8, Lkotlin/jvm/functions/Function2;

    iget-object v9, v13, Lcom/android/launcher3/card/theme/ui/TransformToWidgetWrapper$invokeTransformAction$1;->L$2:Ljava/lang/Object;

    check-cast v9, Lcom/android/launcher3/model/data/ItemInfo;

    iget-object v11, v13, Lcom/android/launcher3/card/theme/ui/TransformToWidgetWrapper$invokeTransformAction$1;->L$1:Ljava/lang/Object;

    check-cast v11, Lcom/android/launcher3/card/IAreaWidget;

    iget-object v12, v13, Lcom/android/launcher3/card/theme/ui/TransformToWidgetWrapper$invokeTransformAction$1;->L$0:Ljava/lang/Object;

    check-cast v12, Lcom/android/launcher3/card/theme/ui/TransformToWidgetWrapper;

    :try_start_9a
    invoke-static {v0}, Lq/d;->p(Ljava/lang/Object;)V
    :try_end_9d
    .catch Ljava/lang/Exception; {:try_start_9a .. :try_end_9d} :catch_a3

    move-object v14, v3

    move-object v3, v9

    move-object v9, v4

    move-object v4, v8

    goto/16 :goto_177

    :catch_a3
    move-exception v0

    move-object v3, v9

    move-object v9, v4

    move-object v4, v8

    goto/16 :goto_24a

    :pswitch_a9  #0x2
    iget-object v1, v13, Lcom/android/launcher3/card/theme/ui/TransformToWidgetWrapper$invokeTransformAction$1;->L$1:Ljava/lang/Object;

    check-cast v1, Lcom/android/launcher/Launcher;

    iget-object v2, v13, Lcom/android/launcher3/card/theme/ui/TransformToWidgetWrapper$invokeTransformAction$1;->L$0:Ljava/lang/Object;

    check-cast v2, Lcom/android/launcher3/model/data/ItemInfo;

    invoke-static {v0}, Lq/d;->p(Ljava/lang/Object;)V

    goto/16 :goto_148

    :pswitch_b6  #0x1
    iget-object v1, v13, Lcom/android/launcher3/card/theme/ui/TransformToWidgetWrapper$invokeTransformAction$1;->L$1:Ljava/lang/Object;

    check-cast v1, Lcom/android/launcher/Launcher;

    iget-object v2, v13, Lcom/android/launcher3/card/theme/ui/TransformToWidgetWrapper$invokeTransformAction$1;->L$0:Ljava/lang/Object;

    check-cast v2, Lcom/android/launcher3/model/data/ItemInfo;

    invoke-static {v0}, Lq/d;->p(Ljava/lang/Object;)V

    goto :goto_11a

    :pswitch_c2  #0x0
    invoke-static {v0}, Lq/d;->p(Ljava/lang/Object;)V

    instance-of v0, v2, Landroid/view/View;

    if-eqz v0, :cond_28a

    instance-of v0, v3, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;

    if-nez v0, :cond_cf

    goto/16 :goto_28a

    :cond_cf
    move-object v0, v2

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lcom/android/launcher/Launcher;->getLauncherOrNull(Landroid/content/Context;)Lcom/android/launcher/Launcher;

    move-result-object v6

    if-nez v6, :cond_de

    goto/16 :goto_287

    :cond_de
    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    instance-of v14, v0, Lcom/android/launcher3/model/data/ItemInfo;

    if-eqz v14, :cond_e9

    check-cast v0, Lcom/android/launcher3/model/data/ItemInfo;

    goto :goto_ea

    :cond_e9
    move-object v0, v12

    :goto_ea
    if-nez v0, :cond_ef

    sget-object v0, Ly2/p;->a:Ly2/p;

    return-object v0

    :cond_ef
    move-object v14, v3

    check-cast v14, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;

    invoke-virtual {v6, v14}, Lcom/android/launcher/Launcher;->inflateAppWidget(Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;)Landroid/view/View;

    move-result-object v14

    instance-of v15, v14, Lcom/android/launcher3/widget/CustomLauncherAppWidgetHostView;

    if-eqz v15, :cond_fd

    check-cast v14, Lcom/android/launcher3/widget/CustomLauncherAppWidgetHostView;

    goto :goto_fe

    :cond_fd
    move-object v14, v12

    :goto_fe
    if-nez v14, :cond_125

    if-nez v4, :cond_104

    move-object v2, v3

    goto :goto_11b

    :cond_104
    new-instance v0, Lcom/android/launcher3/card/theme/data/ResultCode$WidgetCreatedFail;

    const/4 v1, 0x0

    invoke-direct {v0, v9, v1, v11, v12}, Lcom/android/launcher3/card/theme/data/ResultCode$WidgetCreatedFail;-><init>(Ljava/lang/String;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object v3, v13, Lcom/android/launcher3/card/theme/ui/TransformToWidgetWrapper$invokeTransformAction$1;->L$0:Ljava/lang/Object;

    iput-object v6, v13, Lcom/android/launcher3/card/theme/ui/TransformToWidgetWrapper$invokeTransformAction$1;->L$1:Ljava/lang/Object;

    const/4 v1, 0x1

    iput v1, v13, Lcom/android/launcher3/card/theme/ui/TransformToWidgetWrapper$invokeTransformAction$1;->label:I

    invoke-interface {v4, v0, v13}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v5, :cond_118

    return-object v5

    :cond_118
    move-object v2, v3

    move-object v1, v6

    :goto_11a
    move-object v6, v1

    :goto_11b
    invoke-virtual {v6}, Lcom/android/launcher3/Launcher;->getModelWriter()Lcom/android/launcher3/model/OplusModelWriter;

    move-result-object v0

    invoke-virtual {v0, v2, v9}, Lcom/android/launcher3/model/ModelWriter;->deleteItemFromDatabase(Lcom/android/launcher3/model/data/ItemInfo;Ljava/lang/String;)V

    sget-object v0, Ly2/p;->a:Ly2/p;

    return-object v0

    :cond_125
    const/4 v9, 0x4

    invoke-virtual {v14, v9}, Landroid/appwidget/AppWidgetHostView;->setVisibility(I)V

    invoke-virtual/range {p0 .. p1}, Lcom/android/launcher3/card/theme/ui/AreaWidgetTransformBaseWrapper;->getIAreaWidgetParentCellLayout(Lcom/android/launcher3/card/IAreaWidget;)Lcom/android/launcher3/OplusCellLayout;

    move-result-object v9

    if-nez v9, :cond_153

    if-nez v4, :cond_133

    move-object v2, v3

    goto :goto_149

    :cond_133
    new-instance v0, Lcom/android/launcher3/card/theme/data/ResultCode$WidgetCreatedFail;

    const/4 v1, 0x0

    invoke-direct {v0, v8, v1, v11, v12}, Lcom/android/launcher3/card/theme/data/ResultCode$WidgetCreatedFail;-><init>(Ljava/lang/String;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object v3, v13, Lcom/android/launcher3/card/theme/ui/TransformToWidgetWrapper$invokeTransformAction$1;->L$0:Ljava/lang/Object;

    iput-object v6, v13, Lcom/android/launcher3/card/theme/ui/TransformToWidgetWrapper$invokeTransformAction$1;->L$1:Ljava/lang/Object;

    iput v11, v13, Lcom/android/launcher3/card/theme/ui/TransformToWidgetWrapper$invokeTransformAction$1;->label:I

    invoke-interface {v4, v0, v13}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v5, :cond_146

    return-object v5

    :cond_146
    move-object v2, v3

    move-object v1, v6

    :goto_148
    move-object v6, v1

    :goto_149
    invoke-virtual {v6}, Lcom/android/launcher3/Launcher;->getModelWriter()Lcom/android/launcher3/model/OplusModelWriter;

    move-result-object v0

    invoke-virtual {v0, v2, v8}, Lcom/android/launcher3/model/ModelWriter;->deleteItemFromDatabase(Lcom/android/launcher3/model/data/ItemInfo;Ljava/lang/String;)V

    sget-object v0, Ly2/p;->a:Ly2/p;

    return-object v0

    :cond_153
    const-wide/16 v11, 0x28a

    :try_start_155
    iput-object v1, v13, Lcom/android/launcher3/card/theme/ui/TransformToWidgetWrapper$invokeTransformAction$1;->L$0:Ljava/lang/Object;

    iput-object v2, v13, Lcom/android/launcher3/card/theme/ui/TransformToWidgetWrapper$invokeTransformAction$1;->L$1:Ljava/lang/Object;

    iput-object v3, v13, Lcom/android/launcher3/card/theme/ui/TransformToWidgetWrapper$invokeTransformAction$1;->L$2:Ljava/lang/Object;

    iput-object v4, v13, Lcom/android/launcher3/card/theme/ui/TransformToWidgetWrapper$invokeTransformAction$1;->L$3:Ljava/lang/Object;

    iput-object v6, v13, Lcom/android/launcher3/card/theme/ui/TransformToWidgetWrapper$invokeTransformAction$1;->L$4:Ljava/lang/Object;

    iput-object v9, v13, Lcom/android/launcher3/card/theme/ui/TransformToWidgetWrapper$invokeTransformAction$1;->L$5:Ljava/lang/Object;

    iput-object v14, v13, Lcom/android/launcher3/card/theme/ui/TransformToWidgetWrapper$invokeTransformAction$1;->L$6:Ljava/lang/Object;

    iput-object v0, v13, Lcom/android/launcher3/card/theme/ui/TransformToWidgetWrapper$invokeTransformAction$1;->L$7:Ljava/lang/Object;

    move/from16 v8, p3

    iput-boolean v8, v13, Lcom/android/launcher3/card/theme/ui/TransformToWidgetWrapper$invokeTransformAction$1;->Z$0:Z

    const/4 v15, 0x3

    iput v15, v13, Lcom/android/launcher3/card/theme/ui/TransformToWidgetWrapper$invokeTransformAction$1;->label:I

    invoke-static {v11, v12, v13}, Lp/d;->a(JLb3/d;)Ljava/lang/Object;

    move-result-object v11
    :try_end_170
    .catch Ljava/lang/Exception; {:try_start_155 .. :try_end_170} :catch_247

    if-ne v11, v5, :cond_173

    return-object v5

    :cond_173
    move-object v12, v1

    move-object v11, v2

    move v1, v8

    move-object v2, v0

    :goto_177
    :try_start_177
    move-object v0, v11

    check-cast v0, Landroid/view/View;

    invoke-static {v6, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v12, v13, Lcom/android/launcher3/card/theme/ui/TransformToWidgetWrapper$invokeTransformAction$1;->L$0:Ljava/lang/Object;

    iput-object v11, v13, Lcom/android/launcher3/card/theme/ui/TransformToWidgetWrapper$invokeTransformAction$1;->L$1:Ljava/lang/Object;

    iput-object v3, v13, Lcom/android/launcher3/card/theme/ui/TransformToWidgetWrapper$invokeTransformAction$1;->L$2:Ljava/lang/Object;

    iput-object v4, v13, Lcom/android/launcher3/card/theme/ui/TransformToWidgetWrapper$invokeTransformAction$1;->L$3:Ljava/lang/Object;

    iput-object v6, v13, Lcom/android/launcher3/card/theme/ui/TransformToWidgetWrapper$invokeTransformAction$1;->L$4:Ljava/lang/Object;

    iput-object v9, v13, Lcom/android/launcher3/card/theme/ui/TransformToWidgetWrapper$invokeTransformAction$1;->L$5:Ljava/lang/Object;

    iput-object v14, v13, Lcom/android/launcher3/card/theme/ui/TransformToWidgetWrapper$invokeTransformAction$1;->L$6:Ljava/lang/Object;

    iput-object v2, v13, Lcom/android/launcher3/card/theme/ui/TransformToWidgetWrapper$invokeTransformAction$1;->L$7:Ljava/lang/Object;

    iput-boolean v1, v13, Lcom/android/launcher3/card/theme/ui/TransformToWidgetWrapper$invokeTransformAction$1;->Z$0:Z

    const/4 v8, 0x4

    iput v8, v13, Lcom/android/launcher3/card/theme/ui/TransformToWidgetWrapper$invokeTransformAction$1;->label:I

    move-object/from16 p0, v12

    move-object/from16 p1, v0

    move-object/from16 p2, v9

    move-object/from16 p3, v6

    move-object/from16 p4, v3

    move-object/from16 p5, v13

    invoke-virtual/range {p0 .. p5}, Lcom/android/launcher3/card/theme/ui/AreaWidgetTransformBaseWrapper;->prepareForBind(Landroid/view/View;Lcom/android/launcher3/OplusCellLayout;Lcom/android/launcher/Launcher;Lcom/android/launcher3/model/data/ItemInfo;Lb3/d;)Ljava/lang/Object;

    move-result-object v0
    :try_end_1a2
    .catch Ljava/lang/Exception; {:try_start_177 .. :try_end_1a2} :catch_245

    if-ne v0, v5, :cond_1a5

    return-object v5

    :cond_1a5
    move-object v0, v6

    move-object v6, v12

    move-object v8, v14

    move-object v12, v4

    move-object v4, v9

    move-object v9, v3

    goto/16 :goto_71

    :goto_1ad
    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const v14, 0x7f0a0566

    invoke-virtual {v8, v14, v3}, Landroid/appwidget/AppWidgetHostView;->setTag(ILjava/lang/Object;)V

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/OplusWorkspace;

    move-result-object v3

    invoke-interface {v3, v8, v9}, Lcom/android/launcher3/WorkspaceLayoutManager;->addInScreen(Landroid/view/View;Lcom/android/launcher3/model/data/ItemInfo;)Z

    move-result v3

    sget-object v15, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v8, v14, v15}, Landroid/appwidget/AppWidgetHostView;->setTag(ILjava/lang/Object;)V

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "complete addInScreen -- targetInfo:"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v15, ", originInfo: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v15, ", success:"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v7, v14}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v3, :cond_20e

    move-object v9, v2

    check-cast v9, Landroid/view/View;

    invoke-static {v0, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, 0x0

    iput-object v2, v13, Lcom/android/launcher3/card/theme/ui/TransformToWidgetWrapper$invokeTransformAction$1;->L$0:Ljava/lang/Object;

    iput-object v2, v13, Lcom/android/launcher3/card/theme/ui/TransformToWidgetWrapper$invokeTransformAction$1;->L$1:Ljava/lang/Object;

    iput-object v2, v13, Lcom/android/launcher3/card/theme/ui/TransformToWidgetWrapper$invokeTransformAction$1;->L$2:Ljava/lang/Object;

    iput-object v2, v13, Lcom/android/launcher3/card/theme/ui/TransformToWidgetWrapper$invokeTransformAction$1;->L$3:Ljava/lang/Object;

    iput-object v2, v13, Lcom/android/launcher3/card/theme/ui/TransformToWidgetWrapper$invokeTransformAction$1;->L$4:Ljava/lang/Object;

    iput-object v2, v13, Lcom/android/launcher3/card/theme/ui/TransformToWidgetWrapper$invokeTransformAction$1;->L$5:Ljava/lang/Object;

    iput-object v2, v13, Lcom/android/launcher3/card/theme/ui/TransformToWidgetWrapper$invokeTransformAction$1;->L$6:Ljava/lang/Object;

    iput-object v2, v13, Lcom/android/launcher3/card/theme/ui/TransformToWidgetWrapper$invokeTransformAction$1;->L$7:Ljava/lang/Object;

    const/4 v2, 0x6

    iput v2, v13, Lcom/android/launcher3/card/theme/ui/TransformToWidgetWrapper$invokeTransformAction$1;->label:I

    move v7, v1

    move-object v10, v0

    invoke-virtual/range {v6 .. v13}, Lcom/android/launcher3/card/theme/ui/AreaWidgetTransformBaseWrapper;->startReplaceAnim(ZLandroid/view/View;Landroid/view/View;Lcom/android/launcher/Launcher;Lcom/android/launcher3/model/data/ItemInfo;Lkotlin/jvm/functions/Function2;Lb3/d;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v5, :cond_20b

    return-object v5

    :cond_20b
    :goto_20b
    sget-object v0, Ly2/p;->a:Ly2/p;

    return-object v0

    :cond_20e
    check-cast v2, Landroid/view/View;

    invoke-static {v0, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v6, v2, v4, v0, v9}, Lcom/android/launcher3/card/theme/ui/AreaWidgetTransformBaseWrapper;->resetAfterBindFailed(Landroid/view/View;Lcom/android/launcher3/OplusCellLayout;Lcom/android/launcher/Launcher;Lcom/android/launcher3/model/data/ItemInfo;)V

    if-nez v12, :cond_219

    goto :goto_287

    :cond_219
    new-instance v0, Lcom/android/launcher3/card/theme/data/ResultCode$WidgetCreatedFail;

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "TransformToWidgetWrapper, replace failed, addInScreen: "

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/launcher3/card/theme/data/ResultCode$WidgetCreatedFail;-><init>(Ljava/lang/String;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object v4, v13, Lcom/android/launcher3/card/theme/ui/TransformToWidgetWrapper$invokeTransformAction$1;->L$0:Ljava/lang/Object;

    iput-object v4, v13, Lcom/android/launcher3/card/theme/ui/TransformToWidgetWrapper$invokeTransformAction$1;->L$1:Ljava/lang/Object;

    iput-object v4, v13, Lcom/android/launcher3/card/theme/ui/TransformToWidgetWrapper$invokeTransformAction$1;->L$2:Ljava/lang/Object;

    iput-object v4, v13, Lcom/android/launcher3/card/theme/ui/TransformToWidgetWrapper$invokeTransformAction$1;->L$3:Ljava/lang/Object;

    iput-object v4, v13, Lcom/android/launcher3/card/theme/ui/TransformToWidgetWrapper$invokeTransformAction$1;->L$4:Ljava/lang/Object;

    iput-object v4, v13, Lcom/android/launcher3/card/theme/ui/TransformToWidgetWrapper$invokeTransformAction$1;->L$5:Ljava/lang/Object;

    iput-object v4, v13, Lcom/android/launcher3/card/theme/ui/TransformToWidgetWrapper$invokeTransformAction$1;->L$6:Ljava/lang/Object;

    iput-object v4, v13, Lcom/android/launcher3/card/theme/ui/TransformToWidgetWrapper$invokeTransformAction$1;->L$7:Ljava/lang/Object;

    const/4 v1, 0x7

    iput v1, v13, Lcom/android/launcher3/card/theme/ui/TransformToWidgetWrapper$invokeTransformAction$1;->label:I

    invoke-interface {v12, v0, v13}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v5, :cond_287

    return-object v5

    :catch_245
    move-exception v0

    goto :goto_24a

    :catch_247
    move-exception v0

    move-object v12, v1

    move-object v11, v2

    :goto_24a
    const-string/jumbo v1, "prepareForBind exception:"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v7, v1}, Lcom/android/common/debug/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    check-cast v11, Landroid/view/View;

    invoke-static {v6, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v12, v11, v9, v6, v3}, Lcom/android/launcher3/card/theme/ui/AreaWidgetTransformBaseWrapper;->resetAfterBindFailed(Landroid/view/View;Lcom/android/launcher3/OplusCellLayout;Lcom/android/launcher/Launcher;Lcom/android/launcher3/model/data/ItemInfo;)V

    if-nez v4, :cond_25f

    goto :goto_287

    :cond_25f
    new-instance v1, Lcom/android/launcher3/card/theme/data/ResultCode$WidgetCreatedFail;

    const-string v2, "TransformToWidgetWrapper, prepareForBind exception: "

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v6, 0x0

    invoke-direct {v1, v0, v2, v3, v6}, Lcom/android/launcher3/card/theme/data/ResultCode$WidgetCreatedFail;-><init>(Ljava/lang/String;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object v6, v13, Lcom/android/launcher3/card/theme/ui/TransformToWidgetWrapper$invokeTransformAction$1;->L$0:Ljava/lang/Object;

    iput-object v6, v13, Lcom/android/launcher3/card/theme/ui/TransformToWidgetWrapper$invokeTransformAction$1;->L$1:Ljava/lang/Object;

    iput-object v6, v13, Lcom/android/launcher3/card/theme/ui/TransformToWidgetWrapper$invokeTransformAction$1;->L$2:Ljava/lang/Object;

    iput-object v6, v13, Lcom/android/launcher3/card/theme/ui/TransformToWidgetWrapper$invokeTransformAction$1;->L$3:Ljava/lang/Object;

    iput-object v6, v13, Lcom/android/launcher3/card/theme/ui/TransformToWidgetWrapper$invokeTransformAction$1;->L$4:Ljava/lang/Object;

    iput-object v6, v13, Lcom/android/launcher3/card/theme/ui/TransformToWidgetWrapper$invokeTransformAction$1;->L$5:Ljava/lang/Object;

    iput-object v6, v13, Lcom/android/launcher3/card/theme/ui/TransformToWidgetWrapper$invokeTransformAction$1;->L$6:Ljava/lang/Object;

    iput-object v6, v13, Lcom/android/launcher3/card/theme/ui/TransformToWidgetWrapper$invokeTransformAction$1;->L$7:Ljava/lang/Object;

    const/4 v0, 0x5

    iput v0, v13, Lcom/android/launcher3/card/theme/ui/TransformToWidgetWrapper$invokeTransformAction$1;->label:I

    invoke-interface {v4, v1, v13}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v5, :cond_287

    return-object v5

    :cond_287
    :goto_287
    sget-object v0, Ly2/p;->a:Ly2/p;

    return-object v0

    :cond_28a
    :goto_28a
    sget-object v0, Ly2/p;->a:Ly2/p;

    return-object v0

    nop

    :pswitch_data_28e
    .packed-switch 0x0
        :pswitch_c2  #00000000
        :pswitch_b6  #00000001
        :pswitch_a9  #00000002
        :pswitch_78  #00000003
        :pswitch_48  #00000004
        :pswitch_43  #00000005
        :pswitch_3e  #00000006
        :pswitch_43  #00000007
    .end packed-switch
.end method
