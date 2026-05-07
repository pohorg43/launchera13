.class Lcom/coui/appcompat/picker/COUINumberPicker$TwoDigitFormatter;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/coui/appcompat/picker/COUINumberPicker$Formatter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coui/appcompat/picker/COUINumberPicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "TwoDigitFormatter"
.end annotation


# instance fields
.field public final a:Ljava/lang/StringBuilder;

.field public final b:[Ljava/lang/Object;

.field public c:Landroid/icu/text/DecimalFormat;


# direct methods
.method public constructor <init>(Lcom/coui/appcompat/picker/COUINumberPicker;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iput-object p1, p0, Lcom/coui/appcompat/picker/COUINumberPicker$TwoDigitFormatter;->a:Ljava/lang/StringBuilder;

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    iput-object v0, p0, Lcom/coui/appcompat/picker/COUINumberPicker$TwoDigitFormatter;->b:[Ljava/lang/Object;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    new-instance v1, Ljava/util/Formatter;

    invoke-direct {v1, p1, v0}, Ljava/util/Formatter;-><init>(Ljava/lang/Appendable;Ljava/util/Locale;)V

    new-instance p1, Landroid/icu/text/DecimalFormat;

    const-string v0, "00"

    invoke-direct {p1, v0}, Landroid/icu/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/coui/appcompat/picker/COUINumberPicker$TwoDigitFormatter;->c:Landroid/icu/text/DecimalFormat;

    return-void
.end method


# virtual methods
.method public a(I)Ljava/lang/String;
    .registers 5

    iget-object v0, p0, Lcom/coui/appcompat/picker/COUINumberPicker$TwoDigitFormatter;->b:[Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v0, p0, Lcom/coui/appcompat/picker/COUINumberPicker$TwoDigitFormatter;->a:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    invoke-virtual {v0, v2, v1}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/coui/appcompat/picker/COUINumberPicker$TwoDigitFormatter;->c:Landroid/icu/text/DecimalFormat;

    int-to-long v0, p1

    invoke-virtual {p0, v0, v1}, Landroid/icu/text/DecimalFormat;->format(J)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
