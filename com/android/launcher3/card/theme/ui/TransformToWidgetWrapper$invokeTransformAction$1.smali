.class final Lcom/android/launcher3/card/theme/ui/TransformToWidgetWrapper$invokeTransformAction$1;
.super Ld3/c;
.source ""


# annotations
.annotation runtime Ld3/e;
    c = "com.android.launcher3.card.theme.ui.TransformToWidgetWrapper"
    f = "TransformToWidgetWrapper.kt"
    l = {
        0x30,
        0x36,
        0x3b,
        0x3c,
        0x40,
        0x49,
        0x4d
    }
    m = "invokeTransformAction"
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/card/theme/ui/TransformToWidgetWrapper;->invokeTransformAction(Lcom/android/launcher3/card/IAreaWidget;Lcom/android/launcher3/model/data/ItemInfo;ZLkotlin/jvm/functions/Function2;Lb3/d;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public L$0:Ljava/lang/Object;

.field public L$1:Ljava/lang/Object;

.field public L$2:Ljava/lang/Object;

.field public L$3:Ljava/lang/Object;

.field public L$4:Ljava/lang/Object;

.field public L$5:Ljava/lang/Object;

.field public L$6:Ljava/lang/Object;

.field public L$7:Ljava/lang/Object;

.field public Z$0:Z

.field public label:I

.field public synthetic result:Ljava/lang/Object;

.field public final synthetic this$0:Lcom/android/launcher3/card/theme/ui/TransformToWidgetWrapper;


# direct methods
.method public constructor <init>(Lcom/android/launcher3/card/theme/ui/TransformToWidgetWrapper;Lb3/d;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/launcher3/card/theme/ui/TransformToWidgetWrapper;",
            "Lb3/d<",
            "-",
            "Lcom/android/launcher3/card/theme/ui/TransformToWidgetWrapper$invokeTransformAction$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/launcher3/card/theme/ui/TransformToWidgetWrapper$invokeTransformAction$1;->this$0:Lcom/android/launcher3/card/theme/ui/TransformToWidgetWrapper;

    invoke-direct {p0, p2}, Ld3/c;-><init>(Lb3/d;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 8

    iput-object p1, p0, Lcom/android/launcher3/card/theme/ui/TransformToWidgetWrapper$invokeTransformAction$1;->result:Ljava/lang/Object;

    iget p1, p0, Lcom/android/launcher3/card/theme/ui/TransformToWidgetWrapper$invokeTransformAction$1;->label:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lcom/android/launcher3/card/theme/ui/TransformToWidgetWrapper$invokeTransformAction$1;->label:I

    iget-object v0, p0, Lcom/android/launcher3/card/theme/ui/TransformToWidgetWrapper$invokeTransformAction$1;->this$0:Lcom/android/launcher3/card/theme/ui/TransformToWidgetWrapper;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v5, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/launcher3/card/theme/ui/TransformToWidgetWrapper;->invokeTransformAction(Lcom/android/launcher3/card/IAreaWidget;Lcom/android/launcher3/model/data/ItemInfo;ZLkotlin/jvm/functions/Function2;Lb3/d;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
