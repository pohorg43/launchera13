.class Lcom/coui/appcompat/picker/COUITimeLimitPicker$6;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


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

    iput-object p1, p0, Lcom/coui/appcompat/picker/COUITimeLimitPicker$6;->a:Lcom/coui/appcompat/picker/COUITimeLimitPicker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 2

    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    iget-object p0, p0, Lcom/coui/appcompat/picker/COUITimeLimitPicker$6;->a:Lcom/coui/appcompat/picker/COUITimeLimitPicker;

    iget-boolean p1, p0, Lcom/coui/appcompat/picker/COUITimeLimitPicker;->j:Z

    xor-int/lit8 p1, p1, 0x1

    iput-boolean p1, p0, Lcom/coui/appcompat/picker/COUITimeLimitPicker;->j:Z

    invoke-virtual {p0}, Lcom/coui/appcompat/picker/COUITimeLimitPicker;->b()V

    return-void
.end method
