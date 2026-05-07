.class Lcom/coui/appcompat/picker/COUITimeLimitPicker$4;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/coui/appcompat/picker/COUINumberPicker$OnValueChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coui/appcompat/picker/COUITimeLimitPicker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/coui/appcompat/picker/COUITimeLimitPicker;


# direct methods
.method public constructor <init>(Lcom/coui/appcompat/picker/COUITimeLimitPicker;)V
    .registers 2

    iput-object p1, p0, Lcom/coui/appcompat/picker/COUITimeLimitPicker$4;->a:Lcom/coui/appcompat/picker/COUITimeLimitPicker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/coui/appcompat/picker/COUINumberPicker;II)V
    .registers 4

    iget-object p0, p0, Lcom/coui/appcompat/picker/COUITimeLimitPicker$4;->a:Lcom/coui/appcompat/picker/COUITimeLimitPicker;

    sget-object p1, Lcom/coui/appcompat/picker/COUITimeLimitPicker;->u:Lcom/coui/appcompat/picker/COUITimeLimitPicker$OnTimeChangedListener;

    invoke-virtual {p0}, Lcom/coui/appcompat/picker/COUITimeLimitPicker;->a()V

    return-void
.end method
