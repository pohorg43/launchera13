.class Landroidx/appcompat/widget/AppCompatTextView$InspectionCompanion$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/function/IntFunction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/appcompat/widget/AppCompatTextView$InspectionCompanion;->mapProperties(Landroid/view/inspector/PropertyMapper;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/function/IntFunction<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic this$0:Landroidx/appcompat/widget/AppCompatTextView$InspectionCompanion;


# direct methods
.method public constructor <init>(Landroidx/appcompat/widget/AppCompatTextView$InspectionCompanion;)V
    .registers 2

    iput-object p1, p0, Landroidx/appcompat/widget/AppCompatTextView$InspectionCompanion$1;->this$0:Landroidx/appcompat/widget/AppCompatTextView$InspectionCompanion;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic apply(I)Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/AppCompatTextView$InspectionCompanion$1;->apply(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public apply(I)Ljava/lang/String;
    .registers 2

    if-eqz p1, :cond_e

    const/4 p0, 0x1

    if-eq p1, p0, :cond_a

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_a
    const-string/jumbo p0, "uniform"

    return-object p0

    :cond_e
    const-string/jumbo p0, "none"

    return-object p0
.end method
