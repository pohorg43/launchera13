.class final Lcom/android/launcher3/card/theme/ui/AreaWidgetTransformStrategy$findItemByReplaceActions$1$1;
.super Lkotlin/jvm/internal/Lambda;
.source ""

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/card/theme/ui/AreaWidgetTransformStrategy;->findItemByReplaceActions(Landroid/content/Context;Ljava/util/List;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Lcom/android/launcher3/card/theme/data/ReplaceAction;",
        "Lcom/android/launcher3/card/theme/data/SrcDescription;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/android/launcher3/card/theme/ui/AreaWidgetTransformStrategy$findItemByReplaceActions$1$1;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/android/launcher3/card/theme/ui/AreaWidgetTransformStrategy$findItemByReplaceActions$1$1;

    invoke-direct {v0}, Lcom/android/launcher3/card/theme/ui/AreaWidgetTransformStrategy$findItemByReplaceActions$1$1;-><init>()V

    sput-object v0, Lcom/android/launcher3/card/theme/ui/AreaWidgetTransformStrategy$findItemByReplaceActions$1$1;->INSTANCE:Lcom/android/launcher3/card/theme/ui/AreaWidgetTransformStrategy$findItemByReplaceActions$1$1;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Lcom/android/launcher3/card/theme/data/ReplaceAction;)Lcom/android/launcher3/card/theme/data/SrcDescription;
    .registers 2

    const-string p0, "it"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/android/launcher3/card/theme/data/ReplaceAction;->getSrc()Lcom/android/launcher3/card/theme/data/SrcDescription;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    check-cast p1, Lcom/android/launcher3/card/theme/data/ReplaceAction;

    invoke-virtual {p0, p1}, Lcom/android/launcher3/card/theme/ui/AreaWidgetTransformStrategy$findItemByReplaceActions$1$1;->invoke(Lcom/android/launcher3/card/theme/data/ReplaceAction;)Lcom/android/launcher3/card/theme/data/SrcDescription;

    move-result-object p0

    return-object p0
.end method
